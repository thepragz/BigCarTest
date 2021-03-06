//
//  TripDetailsTableViewController.swift
//  
//
//  Created by Macbook Pro on 19/01/2018.
//

import UIKit
import MapKit
import Alamofire
import AlamofireImage



class TripDetailsTableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet var tripImage: UIImageView!
    @IBOutlet var tripDetails: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var  cell: UITableViewCell? = nil
        
        if indexPath.row == 0{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripTitle", for: indexPath)
            
        }
            
            
        else if indexPath.row == 1{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripPrice", for: indexPath)
            
        }
            
            
        else if indexPath.row == 2{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripIcons", for: indexPath)
            
        }
            
            
        else if indexPath.row == 3{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripAbout", for: indexPath)
            
        }
            
            
        else if indexPath.row == 4{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripReviews", for: indexPath)
            
            
        }
        else if indexPath.row == 5{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripMap", for: indexPath)
            
            
            
        }
        else if indexPath.row == 6{
            cell  = tableView.dequeueReusableCell(withIdentifier: "tripActionButton", for: indexPath)
            
            
            
        }
        
        
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 74
            
        }
        else if indexPath.row == 1{
            return 59
        }
        else if indexPath.row == 2{
            return 90
        }else if indexPath.row == 3{
            return 78
        }
        else if indexPath.row == 4{
            return 108
        }
        else if indexPath.row == 5{
            return 198
        }
        else{
            return 80
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
