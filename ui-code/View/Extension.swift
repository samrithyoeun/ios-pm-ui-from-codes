//
//  Extension.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    func setConstrain(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat, to view: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
        leftAnchor.constraint(equalTo: view.leftAnchor, constant: left).isActive = true
        rightAnchor.constraint(equalTo: view.rightAnchor, constant: right).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottom).isActive = true
    }
}
