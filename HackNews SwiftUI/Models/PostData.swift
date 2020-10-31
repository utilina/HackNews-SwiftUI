//
//  PostData.swift
//  HackNews SwiftUI
//
//  Created by Анастасия Улитина on 31.10.2020.
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
    let points: Int
    let title: String
    let url: String?
    
}
