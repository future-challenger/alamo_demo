//
//  OwnerInfo.swift
//  AFDemo
//
//  Created by Bruce Lee on 26/7/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import ObjectMapper

class OwnerInfo: Mappable {
    var login: String?
    var id: Int?
    var avatarUrl: String?
    var reposUrl: String?
    var type: String?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        login <- map["login"]
        id <- map["id"]
        avatarUrl <- map["avatar_url"]
        reposUrl <- map["repos_url"]
        type <- map["type"]
    }
}
