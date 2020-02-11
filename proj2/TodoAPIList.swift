//
//  TodoAPIList.swift
//  proj2
//
//  Created by James on 2/11/20.
//  Copyright © 2020 James. All rights reserved.
//

import Foundation

//"id": 2,
//"title": "cook",
//"slug": "cook",
//"created_at": "2020-02-11T00:39:07.647490Z"

struct TodoAPIList: Decodable {
    var results = [TodoListEntry]()
}

struct TodoListEntry: Decodable, Hashable {
    var id: Int
    var title: String
    var slug: String
    var created_at: String
}
