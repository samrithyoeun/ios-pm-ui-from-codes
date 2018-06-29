//
//  LocationCell.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    let cityImage: UIImageView = {
        let iv  = UIImageView()
        return iv
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.shadowColor = UIColor.black
        label.shadowOffset = CGSize(width: 2, height: 1)
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "location cell")
        setupUI()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func load(with location: Location){
        cityLabel.text = location.name
        cityImage.image = UIImage(named: location.image)
    }
    
    func setupUI(){
        addSubview(cellView)
        cellView.addSubview(cityImage)
        cellView.addSubview(cityLabel)
        
        let screen = UIScreen.main.bounds
        cellView.frame = CGRect(x: 0, y: 0, width: screen.width , height: 150)
        cityImage.setConstrain(top: 0, left: 0, bottom: 0, right: 0, to: cellView)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 20).isActive = true
        cityLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: 20).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor, constant: 0).isActive = true
    }
    
    
}
