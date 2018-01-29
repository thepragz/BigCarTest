//
//  TripIconsTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 19/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripIconsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconBooked: UIImageView!
    
    @IBOutlet weak var iconBookedLabel: UILabel!
    
    @IBOutlet weak var iconAvailable: UIImageView!
    
    @IBOutlet weak var iconAvailableLabel: UILabel!
    
    @IBOutlet weak var iconInstant: UIImageView!
    

    @IBOutlet weak var iconInstantLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
