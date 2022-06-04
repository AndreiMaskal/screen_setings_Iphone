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
    var image: String?
}

class CellData {
    
    static func getData() -> [[Cell]] {
        let sectionOne = [Cell(title: "Авиарежим",
                               isToggle: true,
                               image: "airplane2"),
                          Cell(title: "Wi-Fi",
                               detail: "Не подключено",
                               image: "WiFi"),
                          Cell(title: "Bluetooth",
                               detail: "Вкл.",
                               image:  "bluetooth"),
                          Cell(title: "Сотовая связь",
                               image: "antena"),
                          Cell(title: "Режим модема",
                               image:  "connect"),
                          Cell(title: "VPN",
                               isToggle: true,
                               image: "VPN")]
        
        let sectionTwo = [Cell(title: "Уведомления",
                               image: "sqare"),
                          Cell(title: "Звуки, тактильные сигналы",
                               image: "volume"),
                          Cell(title: "Не беспокоить",
                               image: "sleep"),
                          Cell(title: "Экранное время",
                               image: "time")]

        let sectionThree = [Cell(title: "Основные",
                                 image: "setings"),
                            Cell(title: "Пункт управления",
                                 image: "were"),
                            Cell(title: "Экран и яркость",
                                 image: "AAA"),
                            Cell(title: "Экран \"Домой\"",
                                 image: "color")]

        return [sectionOne, sectionTwo, sectionThree]
    }
}
