//
//  FrontViewController.swift
//  tab test
//
//  Created by Macbook Pro on 03/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class FrontViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
////////sidemenucodes/////////////
    var arrdata = ["Home","Login","Write Review","Credit Card ","Currency","Languange","Notification","Feedback","Contact Us","Settings","Privacy Policy","Term of Use","Careers"]
    
    @IBOutlet var sideView: UIView!
    
    @IBOutlet var sideBar: UITableView!
    
    var isSideViewOpen: Bool = false
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:sideMenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! sideMenuTableViewCell
        
        cell.titleSideMenu.text = arrdata[indexPath.row]
        
        return cell
    }
    
  //////////////////
    
    @IBOutlet var sideMenu: UITableView!
    
    @IBOutlet var bannerImg: UIImageView!
    
    @IBOutlet var popularTripsUICV: UICollectionView!
    
    @IBOutlet var bannerLbl: UILabel!
    
    var arrRes = [[String:AnyObject]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu.isHidden = true
        sideBar.backgroundColor = UIColor.groupTableViewBackground
        isSideViewOpen = false
        
       loadData()//below Alamofire function
       
        // Do any additional setup after loading the view.
        
    }
  
    @IBAction func sideMenuBtn(_ sender: Any) {
        sideBar.isHidden = false
        sideView.isHidden = false
        
        self.view.bringSubview(toFront: sideView)
    }
    
    
    //sidemenu button function
    
    
    
    func loadData(){
        
        Alamofire.request("https://gentle-atoll-11837.herokuapp.com/api/banners").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                    self.bannerLbl?.text = swiftyJsonVar["data"][1]["banner_title2"].stringValue
                
                }
                
            
            print(responseData)
        }
        }
        
    }
    

//        Alamofire.request("https://gentle-atoll-11837.herokuapp.com/api/banners").responseImage {
//            (response) in
//            if let responseValue = response.result.value as! [String: Any]? {
//
//                if let responseBanner = responseValue["data"] as! [[String:Any]]? {
//
//                    self.bannerImg.image = UIImage()
//
//
//                    print(response)
//
//
//                }
//            }
//
//
//
//
//        // Do any additional setup after loading the view.
   //}

//      func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//}

