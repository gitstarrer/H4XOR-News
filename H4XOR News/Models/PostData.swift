//
//  PostData.swift
//  H4XOR News
//
//  Created by Himanshu Gupta on 21/06/20.
//  Copyright © 2020 mine. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable , Identifiable{
    var id : String {
        return objectID
    }
    
    let title : String
    let points : Int
    let url : String?
    let objectID : String
}
