//
//  TripAboutTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 19/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripAboutTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tripAboutTitle: UILabel!
    
    @IBOutlet weak var tripAboutText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
