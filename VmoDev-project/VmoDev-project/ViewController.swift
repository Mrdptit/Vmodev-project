//
//  ViewController.swift
//  VmoDev-project
//
//  Created by Hoang Anh on 11/11/19.
//  Copyright © 2019 Hoang Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
let productCollectionViewCellId = "ProductCollectionViewCell"
    var products = [Products]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       //register cell
        let nibCell = UINib(nibName: productCollectionViewCellId, bundle: nil )
        collectionView.register(nibCell,forCellWithReuseIdentifier: productCollectionViewCellId )
        // init data
        for _ in 1...3{
            let product = Products()
            product?.title = "Creat your Tax Profile"
            product?.description = "Stop guessing what you owe and let us calculate it for you"
            product?.titleButton = "GET STARTED"
            products.append(product!)
        }
        collectionView.reloadData()
    }
}
// Code for collectionView
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    		
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCollectionViewCellId, for: indexPath) as! ProductCollectionViewCell
        let product = products[indexPath.row]
        cell.img.image = UIImage(named: "Illustration")
        cell.titleLb.text = product.title
        cell.descripLb.text = product.description
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        print("\(indexPath.row) - \(product.title) ")
    }
    
    
}
