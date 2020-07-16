//
//  ItemsListCell.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import SwiftUI

struct ItemsListCell: View {

    let item: Item

    @ObservedObject private var imageDownloader = ImageDownloader()

    init(item: Item) {
        self.item = item
        self.imageDownloader.downloadImage(url: item.user.profileImageUrl)
    }

    var body: some View {
        VStack {
            Text(item.title)
            HStack {
                Text(item.user.name)
                if let imageData = imageDownloader.downloadData, let image = UIImage(data: imageData) {
                    Image(uiImage: image).resizable().frame(width: 30, height: 30, alignment: .center).aspectRatio(contentMode: .fill).cornerRadius(15)
                }
            }
        }
    }
}
