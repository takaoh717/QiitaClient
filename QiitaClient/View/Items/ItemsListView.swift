//
//  ItemsListView.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import SwiftUI
import Combine

struct ItemsListView: View {

    @ObservedObject var viewModel = ItemsListViewModel()

    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.displayData) { item in
                    NavigationLink(destination: ItemDetailView(item: item)) {
                        ItemsListCell(item: item)
                    }
                }
            }.navigationBarTitle("記事一覧")
        }.onAppear(perform: viewModel.onAppear)
    }
}
