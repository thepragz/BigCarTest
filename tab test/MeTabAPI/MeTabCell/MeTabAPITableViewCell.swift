//
//  MeTabAPITableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 18/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class MeTabAPITableViewCell: UITableViewCell {
    
    @IBOutlet var meTabMenuTitleLbl: UILabel!
    
    @IBOutlet var meTabTitleBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}