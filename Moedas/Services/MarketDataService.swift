//
//  MarketDataService.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 30/06/2023.
//

import Foundation
import Combine

final class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    private var marketDataSubscription: AnyCancellable?
    private let url = URL(
        string: "https://api.coingecko.com/api/v3/global"
    )
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion,
                receiveValue: { [weak self] returnedGlobalData in
                    self?.marketData = returnedGlobalData.data
                    self?.marketDataSubscription?.cancel()
                }
            )
    }
}

