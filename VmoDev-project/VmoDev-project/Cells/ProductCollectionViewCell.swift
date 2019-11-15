//
//  ProductCollectionViewCell.swift
//  VmoDev-project
//
//  Created by Hoang Anh on 11/12/19.
//  Copyright © 2019 Hoang Anh. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var titleLb: UILabel!
    
    @IBOutlet weak var descripLb: UILabel!
    
    @IBOutlet weak var titleBtton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .white
    }

}
