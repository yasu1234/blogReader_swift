//
//  Blog.swift
//  blogReader_swift
//
//  Created by kuma on 2020/05/26.
//  Copyright © 2020 kuma. All rights reserved.
//

import Foundation
import RealmSwift

class Blog: Object {
    
    @objc dynamic var id : String = NSUUID().uuidString
    @objc dynamic var title : String = ""
    @objc dynamic var url : String = ""
    @objc dynamic var lastUpdateTime = Date()
    @objc dynamic var createDate = Date()
    
    // IDをプライマリキーにする
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func getBlogCount() -> Int {
        let realm = try! Realm()
        let results = realm.objects(Blog.self)
        return results.count
    }
    
    
}
