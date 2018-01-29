//
//  TripPackageQuantityTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 21/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class TripPackageQuantityTableViewCell: UITableViewCell {
    
    @IBOutlet var packageQuantityTitle: UILabel!
    @IBOutlet var packageChildrenTitle: UILabel!
    @IBOutlet var packageChildrenPrice: UILabel!
    
    @IBOutlet var packageAdultTitle: UILabel!
    @IBAction func pakageChildrenStepper(_ sender: Any) {
    }
 
    @IBAction func packageAdultStepper(_ sender: Any) {
    }
    @IBOutlet var packageChildrenQuantity: UILabel!
    @IBOutlet var packageAdultQuantity: UILabel!
    @IBOutlet var packageAdultPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
