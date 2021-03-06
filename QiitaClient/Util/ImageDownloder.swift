//
//  ImageDownloder.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import Foundation

class ImageDownloader: ObservableObject {

    @Published var downloadData: Data? = nil

    func downloadImage(url: String) {
        guard let imageURL = URL(string: url) else { return }
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async { [weak self] in
                guard let `self` = self else { return }
                self.downloadData = data
            }
        }
    }
}

