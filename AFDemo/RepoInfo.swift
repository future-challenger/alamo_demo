//
//  RepoInfo.swift
//  AFDemo
//
//  Created by Bruce Lee on 26/7/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import ObjectMapper

class RepoInfo: Mappable {
    var fullName: String?
    var id: Int?
    var owner: OwnerInfo?
    var description: String?
    var openIssues: Int?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        fullName <- map["full_name"]
        id <- map["id"]
        description <- map["description"]
        owner <- map["owner"]
        openIssues <- map["open_issues"]
    }
}
