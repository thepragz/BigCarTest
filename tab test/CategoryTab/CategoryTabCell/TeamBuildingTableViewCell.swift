//
//  TeamBuildingTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 07/02/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TeamBuildingTableViewCell: UITableViewCell {
    
    
    @IBOutlet var teamBuildingImage: UIImageView!
    @IBOutlet var teamBuildingLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
