//
//  SettingsModel.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import Foundation

struct SettingsModel {
        var title: String
        var detail: String?
        var isToggle: Bool?
        var image: String?
    
    static func getData() -> [[SettingsModel]] {
        
        let sectionOne = [SettingsModel(title: "Авиарежим",
                               isToggle: true,
                               image: "airplane2"),
                          SettingsModel(title: "Wi-Fi",
                               detail: "Не подключено",
                               image: "WiFi"),
                          SettingsModel(title: "Bluetooth",
                               detail: "Вкл.",
                               image:  "bluetooth"),
                          SettingsModel(title: "Сотовая связь",
                               image: "antena"),
                          SettingsModel(title: "Режим модема",
                               image:  "connect"),
                          SettingsModel(title: "VPN",
                               isToggle: true,
                               image: "VPN")]
        
        let sectionTwo = [SettingsModel(title: "Уведомления",
                               image: "sqare"),
                          SettingsModel(title: "Звуки, тактильные сигналы",
                               image: "volume"),
                          SettingsModel(title: "Не беспокоить",
                               image: "sleep"),
                          SettingsModel(title: "Экранное время",
                               image: "time")]

        let sectionThree = [SettingsModel(title: "Основные",
                                 image: "setings"),
                            SettingsModel(title: "Пункт управления",
                                 image: "were"),
                            SettingsModel(title: "Экран и яркость",
                                 image: "AAA"),
                            SettingsModel(title: "Экран \"Домой\"",
                                 image: "color")]

        return [sectionOne, sectionTwo, sectionThree]
    }
}
