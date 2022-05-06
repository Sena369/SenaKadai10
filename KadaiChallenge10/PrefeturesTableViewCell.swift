//
//  PrefeturesTableViewCell.swift
//  KadaiChallenge10
//
//  Created by 澤田世那 on 2022/05/04.
//

import UIKit

class PrefeturesTableViewCell: UITableViewCell {
    @IBOutlet private weak var prefecturesNameLabel: UILabel!
    @IBOutlet private weak var prefecturesNumberLabel: UILabel!

    func configure(name: String, row: Int) {
        prefecturesNameLabel.text = name
        prefecturesNumberLabel.text = "\(row + 1)番目の都道府県です"

        switch row % 3 {
        case 0:
            backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 100/255, alpha: 100/100)
        case 1:
            backgroundColor = UIColor(red: 100/255, green: 255/255, blue: 100/255, alpha: 100/100)
        default:
            backgroundColor = UIColor(red: 100/255, green: 100/255, blue: 255/255, alpha: 100/100)
        }
    }
}
