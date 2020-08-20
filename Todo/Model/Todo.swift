//
//  Todo.swift
//  Todo
//
//  Created by Hasan Qasim on 19/8/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

// codable for JSON parsing
// codable allows to map data directly over the models we create

struct Todos: Codable {
    let items: Array<Todo>
}

struct Todo: Codable {
    let item: String
    let priority: Int
}
