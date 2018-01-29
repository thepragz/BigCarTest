//
//  TripReviewsTableViewCell.swift
//  
//
//  Created by Macbook Pro on 19/01/2018.
//

import UIKit

class TripReviewsTableViewCell: UITableViewCell {

    @IBOutlet weak var tripReviewTitle: UILabel!
    
    @IBOutlet weak var tripRatingNumber: UILabel!
    
    @IBOutlet weak var tripReviewsCount: UILabel!
    
    @IBOutlet weak var tripReviewStar1: UIImageView!
    
    @IBOutlet weak var tripReviewStar2: UIImageView!
    
    @IBOutlet weak var tripReviewStar3: UIImageView!
    @IBOutlet weak var tripReviewStar4: UIImageView!
    @IBOutlet weak var tripReviewStar5: UIImageView!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
