//
//  NetworkManager.swift
//  Работа с сетью, Networking, URLSession
//
//  Created by admin on 01.09.2020.
//  Copyright © 2020 Talgar. All rights reserved.
//

import Foundation


class NetworkManager {
    
    func getAllPosts(_ complitionHandler : @escaping ([Post]) ->  Void) {
        
        if let url = URL(string: "http://jsonplaceholder.typicode.com/posts") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    print("Error in request")
                } else {
                    if let resp = response as? HTTPURLResponse,
                    resp.statusCode == 200 ,
                        let responseData = data {
                        let posts = try? JSONDecoder().decode([Post].self, from: responseData)
                        
                        complitionHandler(posts ?? [])
                    }
                }
            }.resume()
        }
    }
}
