//
//  inbox1TableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 01/02/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class inbox1TableViewCell: UITableViewCell {
    
    @IBOutlet var inboxLabel: UILabel!
    
    @IBOutlet var inboxEmailPicture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
