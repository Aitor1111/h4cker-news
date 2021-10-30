//
//  PostData.swift
//  H4CKER News
//
//  Created by Aitor Trujillo on 13/10/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
