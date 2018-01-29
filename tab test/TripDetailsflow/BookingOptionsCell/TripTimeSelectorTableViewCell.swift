//
//  TripTimeSelectorTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 21/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripTimeSelectorTableViewCell: UITableViewCell {

    @IBOutlet var tripTimeSelectorTitle: UILabel!
    @IBOutlet var tripTime1: UILabel!
    @IBOutlet var tripTime2: UILabel!
    @IBOutlet var tripTime3: UILabel!
    @IBAction func tripTimeSwitch1(_ sender: Any) {
    }
    
    @IBAction func tripTimeSwitch2(_ sender: Any) {
    }
    
    @IBAction func tripTimeSwitch3(_ sender: Any) {
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
