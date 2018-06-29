//
//  ViewController.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let locationVC = LocationVC()
        let musicVC = MusicVC(collectionViewLayout: UICollectionViewFlowLayout())    
        let settingVC = SettingVC()
        
        locationVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "tabPlacesOff"), selectedImage: UIImage(named: "tabPlacesOn"))
        locationVC.title = "Lonely Planet"
        locationVC.tabBarItem.title = ""
        locationVC.tabBarItem.tag = 0
        
        musicVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "tabFamilyOff"), selectedImage: UIImage(named: "tabFamilyOn"))
        musicVC.tabBarItem.tag = 1
        musicVC.title = "Library"
        musicVC.tabBarItem.title = ""
        
        settingVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "tabSettingsOff"), selectedImage: UIImage(named: "tabSettingsOn"))
        settingVC.tabBarItem.tag = 2
        settingVC.title = "Setting"
        settingVC.tabBarItem.title = ""
        
        let tabBarList = [locationVC, musicVC, settingVC]
        viewControllers = tabBarList
        viewControllers = tabBarList.map { UINavigationController(rootViewController: $0)}
        
    }

}

