//
//  TripPriceTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 19/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripPriceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tripPrice: UILabel!
    
    @IBOutlet weak var tripPriceGurantee: UILabel!
    
    @IBAction func tripShareDetails(_ sender: Any) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
