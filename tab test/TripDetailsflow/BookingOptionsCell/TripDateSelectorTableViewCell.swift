//
//  TripDateSelectorTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 21/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripDateSelectorTableViewCell: UITableViewCell {
    
    
    @IBOutlet var tripTitle: UILabel!
    @IBOutlet var tripDate: UILabel!
    @IBAction func tripDateEdit(_ sender: Any) {
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
