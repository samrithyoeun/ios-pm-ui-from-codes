//
//  LocationVC.swift
//  ui-code
//
//  Created by Samrith Yoeun on 6/28/18.
//  Copyright © 2018 samrith. All rights reserved.
//

import UIKit

class LocationVC: UITableViewController {

    let locationList = [Location(name: "Barcelona",image: "barcelona.jpg"),
                             Location(name: "London", image: "london.jpg"),
                             Location(name: "New York City", image: "newyork.jpg"),
                             Location(name: "Paris", image: "paris.jpg"),
                             Location(name: "San Francisco", image: "sanfrancisco.jpg"),
                             Location(name: "Tokyo", image: "tokyo.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(LocationCell.self, forCellReuseIdentifier: "location cell")
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = 150
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let location = locationList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "location cell") as! LocationCell
        cell.load(with: location)
        print(cell.frame.size)
        return cell
        
    }
    
}
