//
//  ViewController.swift
//  CardView
//
//  Created by DHIKA ADITYA on 07/04/22.
//

import UIKit
import Swinflate

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bannerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
//        collectionView = UICollectionView(frame: .zero, collectionViewLayout: SWInflateLayout())
        
        collectionView.frame = .zero
        collectionView.collectionViewLayout = SWInflateLayout()
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection", for: indexPath)
        cell.backgroundColor = .red
        cell.layer.cornerRadius = 32

        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: cellWidth, height: cellHeight)
        return CGSize(width: 256, height: 256)
    }
}

