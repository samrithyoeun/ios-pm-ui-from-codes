//
//  SettingVC.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class SettingVC: UIViewController {
    let cellData = ["Manage Account", "Sign Out", "Share your known Family", "Privacy policy", "About"]
    let scrollView = UIScrollView()
    var tableView = UITableView()
    var imageArray = [UIImage(named: "barcelona.jpg"),
                      UIImage(named: "sanfrancisco.jpg"),
                      UIImage(named: "barcelona.jpg")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScrollView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        setUpTableView()
    }

    private func setUpScrollView(){
        
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width , height: 300)
        scrollView.isPagingEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false

        for i in 0 ..< imageArray.count {
            let imageView = UIImageView()
            imageView.contentMode = .scaleToFill
            imageView.image = imageArray[i]
            let xPosition = view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: view.frame.width
                , height: 300)
            print("size of imageview in scroll view is\(imageView.frame.size)")
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i+1)
            scrollView.addSubview(imageView)
        }
        view.addSubview(scrollView)
    }
    
    private func setUpTableView(){
        tableView.frame = CGRect(x: 0, y: 300, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-300)
        view.addSubview(tableView)
    }
}

extension SettingVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
}

extension SettingVC : UITableViewDelegate{
    
}

