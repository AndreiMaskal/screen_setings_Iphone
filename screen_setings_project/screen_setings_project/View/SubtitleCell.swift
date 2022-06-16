//
//  SubtitleCell.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 02/06/2022.
//

import UIKit

class SubtitleCell: UITableViewCell {
    
    static let tableCellID = "cell"
    
    private lazy var imageCellView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    private lazy var titleCellLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView?.image = nil
        textLabel?.text = nil
        detailTextLabel?.text = nil
        accessoryView = nil
    }

    func setupCell(image: UIImage?, title: String, detailText: String, isSwitch: Bool) {
        
        accessoryType = .disclosureIndicator
        titleCellLabel.text = title
        imageCellView.image = image
        detailTextLabel?.text = detailText
        
        if isSwitch {
            let mySwitch = UISwitch(frame: .zero)

            accessoryView = mySwitch
        }
    }
}

private extension SubtitleCell {
    
    func setupView() {
        
        addSubview(imageCellView)
        addSubview(titleCellLabel)
        
        imageCellView.translatesAutoresizingMaskIntoConstraints = false

        imageCellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        imageCellView.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        imageCellView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        let imageCellViewWidth = (bounds.height - 5)
        imageCellView.widthAnchor.constraint(equalToConstant: imageCellViewWidth).isActive = true
        
        titleCellLabel.translatesAutoresizingMaskIntoConstraints = false
    
        titleCellLabel.leadingAnchor.constraint(equalTo: imageCellView.trailingAnchor, constant: 10).isActive = true
        titleCellLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}


