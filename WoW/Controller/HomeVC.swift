//
//  HomeVC.swift
//  WoW
//
//  Created by omrobbie on 19/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class HomeVC: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wonders.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeCell else {return UITableViewCell()}
        cell.wonder = wonders[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC {
            let item = wonders[indexPath.row]
            vc.wonder = item
            vc.title = item.title
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
