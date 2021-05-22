//
//  DateFormatter.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import Foundation

func Date2String(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .none
    dateFormatter.timeStyle = .short
    dateFormatter.locale = Locale(identifier: "ja_JP")
    return dateFormatter.string(from: date)
}
