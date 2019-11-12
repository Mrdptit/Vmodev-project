//
//  AppDelegate.swift
//  VmoDev-project
//
//  Created by Hoang Anh on 11/7/19.
//  Copyright © 2019 Hoang Anh. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        
        
        UINavigationBar.appearance().barTintColor =
            UIColor.rgb(red: 230, green: 32, blue: 31)
        
        //        application.statusBarStyle = .lightContent
        
        let statusBarBackgroundView = UIView()
        statusBarBackgroundView.backgroundColor = UIColor.rgb(red: 194, green: 31, blue: 31)
        
        window?.addSubview(statusBarBackgroundView)
        window?.addConstraintsWithFormat("H:|[v0]|", views: statusBarBackgroundView)
        let height = application.statusBarFrame.height
        window?.addConstraintsWithFormat("V:|[v0(\(height))]", views: statusBarBackgroundView)
        return true
    }
    
    
    
    
    
}

