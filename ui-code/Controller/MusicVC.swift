//
//  MusicVC.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class MusicVC: UICollectionViewController {
    
    let songList = [Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg"),
                    Song(title: "What do you want",singer: "Unknown" , albumArt: "music.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(MusicCell.self, forCellWithReuseIdentifier: "music cell")
        collectionView?.backgroundColor = UIColor.white
       
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return songList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let song = songList[indexPath.row]
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "music cell", for: indexPath) as! MusicCell
        item.load(with: song)
        return item
    }
}

extension MusicVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CGFloat((view.frame.size.width-60)/2)
        return CGSize(width: width, height: width+50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(20, 20, 20, 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(10)
    }
   
}

