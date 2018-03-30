//
//  MeTabAPIViewController.swift
//  tab test
//
//  Created by Macbook Pro on 18/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit

class MeTabAPIViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    @IBOutlet var myProfile: UICollectionView!
    let imageArray = ["Perak","sabah","johor","kedah"]
    let titleArray = ["Perak","Sabah","Johor","Kedah"]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        cell.imageView.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
    }
    
}
