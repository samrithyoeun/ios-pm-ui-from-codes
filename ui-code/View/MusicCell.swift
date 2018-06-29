//
//  MusicCell.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class MusicCell: UICollectionViewCell {
    let cellView: UIView = {
        let view = UIView()
        return view
    }()
    
    let albumImage: UIImageView = {
        let iv  = UIImageView()
        iv.image = UIImage(named: "tokyo.jpg")
        return iv
    }()
    
    let singerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Hello"
        label.textColor = UIColor.black
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Hello"
        label.textColor = UIColor.black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(frame)
        setup(associateWith: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func load(with song: Song){
        titleLabel.text = song.title
        singerLabel.text = song.singer
        albumImage.image = UIImage(named: song.albumArt)
    }
    
    private func setup(associateWith frame: CGRect){
        
        addSubview(cellView)
        cellView.addSubview(albumImage)
        cellView.addSubview(titleLabel)
        cellView.addSubview(singerLabel)
        
        cellView.frame = CGRect(x: 0, y: 0, width: frame.width , height: frame.height)
        
        albumImage.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 0)
        albumImage.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 0)
        albumImage.frame.size = CGSize(width: cellView.frame.width, height: cellView.frame.width)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 0).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: 0).isActive = true
        titleLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 4).isActive = true
        
        singerLabel.translatesAutoresizingMaskIntoConstraints = false
        singerLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 0).isActive = true
        singerLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: 0).isActive = true
        singerLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        
    }
    
    
    
    
    
}
