//
//  WelcomeViewController.swift
//  tab test
//
//  Created by Macbook Pro on 12/02/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var logoImg: UIImageView!
//    @IBOutlet var loginButton: UIButton!
//    @IBOutlet var registerButton: UIButton!
    
    @IBOutlet var backgroundImage: UIImageView!
    
    @IBAction func loginPage(_ sender: UIButton) {
        performSegue(withIdentifier: "welcomeTab", sender: self)
        
        
    }
    
    @IBAction func registerPage(_ sender: UIButton) {
        
        performSegue(withIdentifier: "welcomeTab", sender: self)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        
        logoImg.layer.cornerRadius = logoImg.frame.size.width / 2
        logoImg.layer.borderWidth = 2
        logoImg.clipsToBounds = true
        
        
    
        
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
