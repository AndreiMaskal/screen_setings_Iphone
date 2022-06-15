//
//  ViewController.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var allCellData = SettingsModel.getData()

    private lazy var tableView: UITableView = {
        let table = UITableView(frame: view.bounds, style: .grouped)
        table.rowHeight = 50
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
        let image = UIImage(named: dataForCell.image ?? "")
        cell.setupCell(image: image, title: dataForCell.title, detailText: dataForCell.detail ?? "", isSwitch: dataForCell.isToggle ?? false)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let title = allCellData[indexPath.section][indexPath.row].title 
        print("Нажата ячейка \(title)")
        
    }
}
