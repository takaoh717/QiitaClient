//
//  Item.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import Foundation

struct Item: Codable, Identifiable {
    let id: String
    let body: String
    let title: String
    let url: String
    let user: User
}
