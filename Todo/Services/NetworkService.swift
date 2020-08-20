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
            if let error = error {
                debugPrint(error.localizedDescription)
                return
            }
            
            guard let data = data, let response = response as? HTTPURLResponse else {
                debugPrint("Invalid data or response")
                return
            }
            
            do {
                if response.statusCode == 200 {
                    // parse successful result (todos)
                    let items = try JSONDecoder().decode(Todos.self, from: data)
                    print(items)
                } else {
                    // display error
                    let err = try JSONDecoder().decode(APIError.self, from: data)
                }
            } catch {
                debugPrint(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func addTodo(todo: Todo) {
        
    }
}
