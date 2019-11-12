//
//  dataModel.swift
//  VmoDev-project
//
//  Created by Hoang Anh on 11/11/19.
//  Copyright © 2019 Hoang Anh. All rights reserved.
//

import UIKit
class Products {
    var image : Data?
    var title : String?
    var description : String?
    var titleButton : String?
    
    init(title : String, image:Data, description : String, titleButton: String) {
           self.title = title
           self.image = image
        self.description = description
        self.titleButton = titleButton
       }
}
