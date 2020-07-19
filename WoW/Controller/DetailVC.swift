//
//  DetailVC.swift
//  WoW
//
//  Created by omrobbie on 19/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class DetailVC: UITableViewController {

    var wonder: Wonder!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? DetailCell else {return UITableViewCell()}
        cell.wonder = wonder
        return cell
    }
}
