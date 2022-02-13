//
//  GalleryViewController.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 26.10.2021.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let reuseIdentifierGaleryCell = "reuseIdentifierGaleryCell"
    
    
    
    var photos = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: galleryCollectionCellNibName, bundle: nil), forCellWithReuseIdentifier: reuseIdentifierGaleryCell)
        
     
    }
}
  

