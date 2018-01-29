//
//  PaymentSummaryBookingDetailsTableViewCell.swift
//  tab test
//
//  Created by Macbook Pro on 29/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class PaymentSummaryBookingDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet var PaymentSummaryTitle: UILabel!
    
    @IBOutlet var totalTitle: UILabel!
    @IBOutlet var totalAmount: UILabel!
    
    @IBOutlet var promocodeLabel: UILabel!
    @IBOutlet var promocodeTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 
}
