//
//  BlogListViewCellTableViewCell.swift
//  blogReader_swift
//
//  Created by kuma on 2020/06/01.
//  Copyright © 2020 kuma. All rights reserved.
//

import UIKit

class BlogListViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lastUpdateTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
