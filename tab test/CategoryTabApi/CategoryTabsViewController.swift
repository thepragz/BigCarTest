//
//  CategoryTabsViewController.swift
//  tab test
//
//  Created by Macbook Pro on 18/02/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage


class CategoryTabsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet var CategoryTableView: UITableView!
    
    var categoriesName : [[String:Any]] = [[String:Any]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://gentle-atoll-11837.herokuapp.com/api/categories").responseJSON {
         (response) in
            if let responseValue = response.result.value as! [String: Any]? {
                
                if let  responsecategoriesName = responseValue["data"] as! [[String: Any]]? {
                    
                    self.categoriesName = responsecategoriesName
                    self.CategoryTableView.reloadData()
                    print(responseValue)
                }
            }
        }

        // Do any additional setup after loading the view.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryApiCell") as!
        CategoryAPITableViewCell
        
        if self.categoriesName.count > 0 {
            let eachCategory = categoriesName[indexPath.row]
             cell.categoryTitleLbl?.text = (eachCategory["servicecat_name"] as? String) ?? ""
            if let imageUrl = eachCategory["servicecat_image"] as? String{
                Alamofire.request(imageUrl).responseImage(completionHandler: {(response) in
                    
                    print(response)
                    
                    if let image = response.result.value {
                        
                        cell.categoryImg?.image = image
                    }
                     
                })
            }
            
        
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
       if  indexPath.row > 0{
            return 100
        }
        return 120
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

