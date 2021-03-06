//
//  FirstViewController.swift
//  tab test
//
//  Created by Macbook Pro on 29/11/2017.
//  Copyright © 2017 Macbook Pro. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    
    @IBOutlet weak var sampleView: UICollectionView!
    let imageArray = ["Perak","sabah","johor","kedah"]
    let titleArray = ["Perak","Sabah","Johor","Kedah"]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func goDetailsPage(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToDetails", sender: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCollectionViewCell
        
        cell.titleTest?.text = self.titleArray[indexPath.row]
        
        cell.imageView.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
    }

    
    
    
    
}

