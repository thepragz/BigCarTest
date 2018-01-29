//
//  TitleBookingDetailsTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 29/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TitleBookingDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet var tripTitleLabel: UILabel!
    
    @IBOutlet var tripPageTitle: UILabel!
    @IBOutlet var tripPrice: UILabel!
    @IBOutlet var tournoPax: UILabel!
    @IBOutlet var dateTripChoosed: UILabel!
    @IBOutlet var packageName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
