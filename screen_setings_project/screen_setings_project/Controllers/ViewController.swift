//
//  ViewController.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var allCellData = SettingsModel.getData()
    
    private var settingsView: TableView? {
        guard isViewLoaded else { return nil }
        return view as? TableView
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = TableView()
        configureView()
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

private extension ViewController {
    func configureView() {
        settingsView?.tableView.dataSource = self
        settingsView?.tableView.delegate = self
        settingsView?.setupLayout()
        settingsView?.setupHierarchy()
    }
}
