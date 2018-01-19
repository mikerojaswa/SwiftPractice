//
//  ViewController.swift
//  CollectionViewTest
//
//  Created by Michael Rojas on 11/13/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionVIew.delegate = self
        collectionVIew.dataSource = self
        collectionVIew.register(UINib.init(nibName: "MugCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MugCell")
    }

    @IBOutlet var collectionVIew: UICollectionView!
    


}

 //MARK: - UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionVIew.bounds.size.width/2 - 10
        let height = width
        
        return CGSize(width: width, height: height)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MugCell",
                                                      for: indexPath) as! MugCellCollectionViewCell
        
        return cell
    }


}

