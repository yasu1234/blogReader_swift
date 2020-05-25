//
//  BlogListViewController.swift
//  blogReader_swift
//
//  Created by kuma on 2020/05/09.
//  Copyright © 2020 kuma. All rights reserved.
//

import UIKit

class BlogListViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        
    }
}


extension BlogListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }
}

extension BlogListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }
}

