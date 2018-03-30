//
//  TestFrontViewController.swift
//  tab test
//
//  Created by Macbook Pro on 26/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage



class TestFrontViewController: UIViewController {
    
    
    @IBOutlet var bannerImage: UIImageView!
    
    @IBOutlet var bannerTitle: UILabel!
    
    @IBOutlet var bannerSliderImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://gentle-atoll-11837.herokuapp.com/api/banners").responseJSON {
            
            response in
            
            guard let value = response.result.value as? [String: Any],
               let banners = value["data"] as? [[String: Any]] else {
                    print("Malformed data received from fetchAllRooms service")
                
                    return
            }
            print(banners[0]["banner_title2"]!)
            
            self.bannerTitle.text = banners[0]["banner_title2"]! as! String
            
            if let imageUrl = banners[0]["banner_image"] as? String{
                Alamofire.request(imageUrl).responseImage(completionHandler: {(response) in
                    
                    print(response)
                    
                    if let image = response.result.value {
                        
                        self.bannerImage?.image = image
                    }
                    
                })
            }

            print(response.result.value)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
