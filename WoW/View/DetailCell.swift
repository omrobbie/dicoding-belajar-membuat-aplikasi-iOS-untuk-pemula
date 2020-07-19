//
//  DetailCell.swift
//  WoW
//
//  Created by omrobbie on 19/07/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!

    var wonder: Wonder! {
        didSet {
            imgView.image = UIImage(named: wonder.imageName)
            lblDescription.text = wonder.description
        }
    }
}
