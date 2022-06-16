//
//  TableView.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 16/06/2022.
//

import UIKit

class TableView: UIView {
    
    
    lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.rowHeight = 50
        table.register(SubtitleCell.self, forCellReuseIdentifier: SubtitleCell.tableCellID)
        return table
    }()
    
    func setupHierarchy() {
        
        addSubview(tableView)
    }
    
    func setupLayout() {
        
        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
