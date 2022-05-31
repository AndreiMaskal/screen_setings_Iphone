//
//  CellStruct.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import UIKit

struct Cell {
    var title: String?
    var detail: String?
    var isToggle: Bool?
    var image: UIImage?
}

class CellData {
    
    static func getData() -> [[Cell]] {
        let sectionOne = [Cell(title: "Авиарежим",
                               isToggle: true,
                               image: UIImage(named: "airplane")),
                          Cell(title: "Wi-Fi",
                               detail: "Не подключено",
                               image: UIImage(named: "WiFi")),
                          Cell(title: "Bluetooth",
                               detail: "Вкл.",
                               image: UIImage(named: "bluetooth")),
                          Cell(title: "Сотовая связь",
                               image: UIImage(named: "antena")),
                          Cell(title: "Режим модема",
                               image: UIImage(named: "connect")),
                          Cell(title: "VPN",
                               isToggle: true,
                               image: UIImage(named: "VPN"))]
        
        let sectionTwo = [Cell(title: "Уведомления",
                               image: UIImage(named: "sqare")),
                          Cell(title: "Звуки, тактильные сигналы",
                               image: UIImage(named: "volume")),
                          Cell(title: "Не беспокоить",
                               image: UIImage(named: "sleep")),
                          Cell(title: "Экранное время",
                               image: UIImage(named: "time"))]

        let sectionThree = [Cell(title: "Основные",
                                 image: UIImage(named: "setings")),
                            Cell(title: "Пункт управления",
                                 image: UIImage(named: "were")),
                            Cell(title: "Экран и яркость",
                                 image: UIImage(named: "AAA")),
                            Cell(title: "Экран \"Домой\"",
                                 image: UIImage(named: "color"))]

        return [sectionOne, sectionTwo, sectionThree]
    }
}

var allCellData = CellData.getData()
