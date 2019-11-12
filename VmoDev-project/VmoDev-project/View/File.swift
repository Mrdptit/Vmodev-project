//
//  File.swift
//  VmoDev-project
//
//  Created by Hoang Anh on 11/12/19.
//  Copyright © 2019 Hoang Anh. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



