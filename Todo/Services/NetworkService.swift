//
//  NetworkService.swift
//  Todo
//
//  Created by Hasan Qasim on 19/8/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    let URL_BASE = "http://localhost:3003"
    let URL_ADD_TODO = "/add"
    
    let session = URLSession(configuration: .default)
    
    func getTodos() {
        let url = URL(string: URL_BASE)!
        
        let task = session.dataTask(with: url) { (data, response, error) in
            // debug print adds additional information suitable for debugging
            debugPrint(data)
        }
        
        task.resume()
    }
    
    func addTodo(todo: Todo) {
        
    }
}
