//
//  SubtitleCell.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 02/06/2022.
//

import UIKit

class SubtitleCell: UITableViewCell {
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView?.image = nil
        textLabel?.text = nil
        detailTextLabel?.text = nil
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: .value1, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: Cell) {
        accessoryType = .disclosureIndicator
        textLabel?.text = data.title
        let image = UIImage(named: data.image ?? "")
        imageView?.image = image
        detailTextLabel?.text = data.detail
        imageView?.clipsToBounds = true
        imageView?.layer.cornerRadius = 12
        let mySwitch = UISwitch(frame: .zero)
        if data.isToggle != nil {
            accessoryView = mySwitch
        }
    }
}
