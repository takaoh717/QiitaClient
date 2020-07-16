//
//  ItemDetailView.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {

    var item: Item

    var body: some View {
        Text(item.body)
    }
}
