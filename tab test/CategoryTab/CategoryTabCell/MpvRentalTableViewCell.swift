//
//  MpvRentalTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 07/02/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class MpvRentalTableViewCell: UITableViewCell {
    
    @IBOutlet var mpvVanRentalLbl: UILabel!
    
    @IBOutlet var mpvVanRentalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
