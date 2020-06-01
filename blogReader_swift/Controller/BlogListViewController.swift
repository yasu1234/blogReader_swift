//
//  BlogListViewController.swift
//  blogReader_swift
//
//  Created by kuma on 2020/05/09.
//  Copyright © 2020 kuma. All rights reserved.
//

import UIKit
import RealmSwift

class BlogListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// Date型の日付を文字列にする
func stringFromDate(date: Date, format: String) -> String {
    let formatter: DateFormatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .gregorian)
    formatter.dateFormat = format
    return formatter.string(from: date)
}


extension BlogListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let realm = try! Realm()
        let blogs = realm.objects(Blog.self)
        return blogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BlogListViewCell
        
        let realm = try! Realm()
        let blogs = realm.objects(Blog.self).sorted(byKeyPath: "createDate", ascending: true)
        let blog = blogs[indexPath.row]
        cell.titleLabel.text = blog.title
        cell.lastUpdateTimeLabel.text = stringFromDate(date: blog.lastUpdateTime, format: "yyyy/MM/dd HH:mm")
        
        return cell
    }
}

extension BlogListViewController: UITableViewDataSource {
}

