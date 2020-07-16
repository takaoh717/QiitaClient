//
//  User.swift
//  QiitaClient
//
//  Created by Takao Horiguchi on 2020/07/16.
//  Copyright © 2020 takaoh717. All rights reserved.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let name: String
    let profileImageUrl: String
}
