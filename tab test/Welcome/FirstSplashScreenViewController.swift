//
//  FirstSplashScreenViewController.swift
//  tab test
//
//  Created by Macbook Pro on 31/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class FirstSplashScreenViewController: UIViewController {

    @IBOutlet var splashLogo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        splashLogo.layer.cornerRadius = splashLogo.frame.size.width / 2
        splashLogo.layer.borderWidth = 2
        splashLogo.clipsToBounds = true
        
        
      

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
