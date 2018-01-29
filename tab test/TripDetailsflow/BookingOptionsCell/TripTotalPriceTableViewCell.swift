//
//  TripTotalPriceTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 21/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripTotalPriceTableViewCell: UITableViewCell {

    @IBOutlet var tripTotalTiltle: UILabel!
    
    @IBOutlet var tripTotalPrice: UILabel!
    @IBAction func tripPriceNextButton(_ sender: Any) {
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
