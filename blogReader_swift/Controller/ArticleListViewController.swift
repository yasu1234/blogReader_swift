//
//  ArticleListViewController.swift
//  blogReader_swift
//
//  Created by kuma on 2020/06/02.
//  Copyright © 2020 kuma. All rights reserved.
//

import UIKit
import RealmSwift

class ArticleListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension ArticleListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let realm = try! Realm()
        let blogDetails = realm.objects(BlogDetail.self)
        return blogDetails.count
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BlogListViewCell
        
        let realm = try! Realm()
        let blogDetails = realm.objects(BlogDetail.self).sorted(byKeyPath: "lastUpdateTime", ascending: true)
        let blogDetail = blogDetails[indexPath.row]
        cell.titleLabel.text = blogDetail.title
        cell.lastUpdateTimeLabel.text = stringFromDate(date: blogDetail.lastUpdateTime, format: "yyyy/MM/dd HH:mm")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let realm = try! Realm()
        let blogDetails = realm.objects(BlogDetail.self).sorted(byKeyPath: "lastUpdateTime", ascending: true)
        let blogDetail = blogDetails[indexPath.row]
        let url = NSURL(string: blogDetail.url)
        // 外部ブラウザでURLを開く
        if UIApplication.shared.canOpenURL(url! as URL){
            UIApplication.shared.open(url! as URL, options:[:], completionHandler: nil)
        }
    }
}
