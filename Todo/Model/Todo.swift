//
//  Todo.swift
//  Todo
//
//  Created by Hasan Qasim on 19/8/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

// codable for JSON parsing
struct Todo: Codable {
    let item: String
    let prioirty: Int
}
