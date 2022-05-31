//
//  ViewController.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        
        let table = UITableView(frame: view.bounds, style: .grouped)
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
       
    }
       
    

    // MARK: - Settings
    private func setupView() {
        
        title = "Настройки"
        tableView.register(SubtitleCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func setupHierarchy() {
        
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        
        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}

extension ViewController: UITableViewDataSource  {
    func numberOfSections(in tableView: UITableView) -> Int {
        return allCellData.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCellData[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SubtitleCell else {
            return UITableViewCell()
        }
        let dataForCell = allCellData[indexPath.section][indexPath.row]
        cell.setupCell(data: dataForCell)
        return cell
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let title = allCellData[indexPath.section][indexPath.row].title ?? "nil"
        print("Нажата ячейка \(title)")
        
    }
}

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
        imageView?.image = data.image
        textLabel?.text = data.title
        detailTextLabel?.text = data.detail
        imageView?.clipsToBounds = true
        imageView?.layer.cornerRadius = 12
        
        let mySwitch = UISwitch(frame: .zero)
        
        if data.isToggle != nil {
            accessoryView = mySwitch
        }
    }
}


