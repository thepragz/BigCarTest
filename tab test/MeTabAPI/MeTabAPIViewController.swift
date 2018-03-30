//
//  MeTabAPIViewController.swift
//  tab test
//
//  Created by Macbook Pro on 18/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class MeTabAPIViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var meTabTableView: UITableView!
    
    let meTableArray = ["My Account","Favorites","My Booking","Inbox", "My Saved Cards", "My Points", "Version 1.0.5"]
    
    @IBOutlet var userProfilePicture: UIImageView!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //image//
        
        userProfilePicture.layer.cornerRadius = (userProfilePicture.frame.size.width) / 2
        userProfilePicture.layer.masksToBounds = true
        
        self.meTabTableView.dataSource = self
        self.meTabTableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meTableArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = meTabTableView.dequeueReusableCell(withIdentifier: "MeTabTableViewCell", for: indexPath) as! MeTabTableViewCell
        
        cell.metabTitle?.text = self.meTableArray[indexPath.row]
        
        return cell
    }
    
   
    
}
