//
//  Class.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import Foundation

struct ClassData: Identifiable {
    let id = UUID()
    let name: String // 授業名
    let description: String // 講義内容
    let room: String // 講義室名
    let start: Date // 開始時間
    let end: Date // 終了時間
}
