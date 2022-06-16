//
//  SettingsModel.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import Foundation

struct Model {
        var title: String
        var detail: String?
        var isToggle: Bool?
        var image: String?
}
    
struct SettingsModel {
    static func getData() -> [[Model]] {
        
        let sectionOne = [Model(title: "Авиарежим",
                               isToggle: true,
                               image: "airplane2"),
                          Model(title: "Wi-Fi",
                               detail: "Не подключено",
                               image: "WiFi"),
                          Model(title: "Bluetooth",
                               detail: "Вкл.",
                               image:  "bluetooth"),
                          Model(title: "Сотовая связь",
                               image: "antena"),
                          Model(title: "Режим модема",
                               image:  "connect"),
                          Model(title: "VPN",
                               isToggle: true,
                               image: "VPN")]
        
        let sectionTwo = [Model(title: "Уведомления",
                               image: "sqare"),
                          Model(title: "Звуки, тактильные сигналы",
                               image: "volume"),
                          Model(title: "Не беспокоить",
                               image: "sleep"),
                          Model(title: "Экранное время",
                               image: "time")]

        let sectionThree = [Model(title: "Основные",
                                 image: "setings"),
                            Model(title: "Пункт управления",
                                 image: "were"),
                            Model(title: "Экран и яркость",
                                 image: "AAA"),
                            Model(title: "Экран \"Домой\"",
                                 image: "color")]

        return [sectionOne, sectionTwo, sectionThree]
    }
}
