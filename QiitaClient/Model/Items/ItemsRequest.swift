//
//  ItemsRequest.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import Alamofire

class ItemsRequest: BaseRequestProtocol {

    var keyword = ""

    var parameters: Parameters? {
        return ["q": keyword, "page": 1, "per_page": 20]
    }

    var method: HTTPMethod {
        return .get
    }

    var path: String {
        return "/items"
    }

    var allowsConstrainedNetworkAccess: Bool {
        return false
    }

    init(keyword: String) {
        self.keyword = keyword
    }

    typealias ResponseType = [Item]
}
