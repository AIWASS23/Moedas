//
//  CoinImageViewModel.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 29/06/2023.
//

import SwiftUI
import Combine

final class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        addSubscribers()
        isLoading = true
    }
    
    private func addSubscribers() {
        dataService.$image
            .sink { [weak self] _ in
                self?.isLoading = false
            } receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
    }
}
