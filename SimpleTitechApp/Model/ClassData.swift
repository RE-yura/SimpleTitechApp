//
//  Class.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import Foundation

struct ClassData: Hashable {
    var name: String = "授業名"
    var description: String = "講義内容"
    var room: String = "講義室名"
    var start: Date = Date()
    var end: Date = Date()
}
