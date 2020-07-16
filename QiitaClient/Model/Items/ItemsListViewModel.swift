//
//  ItemsListViewModel.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import Foundation
import Combine
import Alamofire

final class ItemsListViewModel: ObservableObject {

    @Published var displayData: [Item] = []

    var task: AnyCancellable? = nil

    private(set) lazy var onAppear: () -> Void = { [weak self] in
        self?.getItems(keyword: "swift")
    }

    func getItems(keyword: String) {
        self.task = NetworkPublisher.publish(ItemsRequest(keyword: keyword))
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { (completion) in
                switch completion {
                case .finished:
                    print("OK")
                case let .failure(error):
                    print(error)
                }
            }, receiveValue: { (data) in
                self.displayData = data
            })
    }
}
