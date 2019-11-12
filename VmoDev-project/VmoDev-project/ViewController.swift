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
        products =
            [Products(title: "Creat your Tax Profile", image:(UIImage(named: "1")?.pngData())!, description: "Stop guessing what you owe and let us calculate it for you.", titleButton: "GET STARTED"),
             
             Products(title: "Send a W-9", image:(UIImage(named: "2")?.pngData())!, description: "Quickly generate and send your W-9 from the app.", titleButton: "COMING SOON"),
             
            Products(title: "Have any ideas?", image:(UIImage(named: "3")?.pngData())!, description: "We'd love to hear it. What would you like to see in this app?",titleButton: "Submit IDEA")
        ]
            collectionView.reloadData()
        setupMenuBar()
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    private func setupMenuBar() {
        view.addSubview(menuBar)
        view.addConstraintsWithFormat("H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat("V:|[v0(113.5)]", views: menuBar)
    }
    
}

// Code for collectionView
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 352)
    }
    
    		
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCollectionViewCellId, for: indexPath) as! ProductCollectionViewCell
        let product = products[indexPath.row]
        cell.img.image =  UIImage(data: product.image!)
        cell.titleLb.text = product.title
        cell.descripLb.text = product.description
        cell.titleBtton.setTitle(product.titleButton, for:.normal)
        
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        print("\(indexPath.row) - \(product.title) ")
    }
    
    func setTitle(_ title : String?, for state : UIControl.State)   {

    }
}
