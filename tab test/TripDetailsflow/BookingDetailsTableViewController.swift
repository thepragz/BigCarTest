//
//  BookingDetailsTableViewController.swift
//  tab test
//
//  Created by Macbook Pro on 12/01/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class BookingDetailsViewController: UITableViewController {
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell? = nil
        
        if indexPath.row == 0{
            cell = tableView.dequeueReusableCell(withIdentifier: "TitleBookingDetailsTableViewCell", for: indexPath)
        } else if indexPath.row == 1{
            cell = tableView.dequeueReusableCell(withIdentifier: "TravellerInfoBookingDetailTableViewCell", for: indexPath)
        } else if indexPath.row == 2{
            cell = tableView.dequeueReusableCell(withIdentifier: "PaymentSummaryBookingDetailsTableViewCell", for: indexPath)
            
        }
        return cell!
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 154
        }
        else if indexPath.row == 1{
            return 157
        }
        else if indexPath.row == 2{
            return 140
        }
        else {
            return 100
        }
    }
    
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
        
    }

  

}
