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
        return
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
