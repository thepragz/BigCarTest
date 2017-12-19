//
//  CategoryViewController.swift
//  tab test
//
//  Created by wan muzaffar Wan Hashim on 18/12/2017.
//  Copyright © 2017 Macbook Pro. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{

    var images = ["airport.jpg", "adventure-tour.jpg", "events.jpg","MPV-Rental.jpg","Sightseeing-Tour.jpg","student-summercamp.jpg","teambuilding.jpg"]
    var titleArray = ["Airport Transfer", "Adventure Tour", "Event & Incentive Group","MPV Van Rental", "Sightseeing Tour", "Student Summer Camp", "Team Building"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CategoriesCollectionViewCell
        cell.categoryLbl.text = titleArray[indexPath.row]
        cell.imageView.image = UIImage(named: images[indexPath.row])
    
        return cell
    }
}
