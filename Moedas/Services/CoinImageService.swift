//
//  CoinImageService.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 29/06/2023.
//

import SwiftUI
import Combine

final class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
        } else {
            downloadCoinImage()
        }
    }
    
    private func downloadCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap { data in
                UIImage(data: data)
            }
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion,
                receiveValue: { [weak self] returnedImage in
                    guard
                        let self,
                        let downloadedImage = returnedImage
                    else { return }
                    
                    image = returnedImage
                    imageSubscription?.cancel()
                    fileManager.saveImage(image: downloadedImage, imageName: imageName, folderName: folderName)
                }
            )
    }
}
