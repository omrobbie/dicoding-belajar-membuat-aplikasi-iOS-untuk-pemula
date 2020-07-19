//
//  HomeVC.swift
//  WoW
//
//  Created by omrobbie on 19/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class HomeVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "Item \(indexPath.row)"
        return cell
    }
}
