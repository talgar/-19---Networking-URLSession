//
//  Post.swift
//  Работа с сетью, Networking, URLSession
//
//  Created by admin on 31.08.2020.
//  Copyright © 2020 Talgar. All rights reserved.
//

import Foundation

class Post : Codable {
    var userId : Int
    var id : Int
    var title : String
    var body : String
}
