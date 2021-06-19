//
//  ClassDetailsList.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct Detail: Identifiable {
    let id = UUID()
    let title: String
    let contents: String
}

struct ClassDetailsList: View {
    let cls: ClassData
    
    let details = [
        Detail(title: "アナウンスメント", contents: "フォーラム"),
        Detail(title: "講義スライド", contents: "ファイル"),
        Detail(title: "zoom録画", contents: "URL"),
    ]
        
    var body: some View {
        List {
            ForEach(details) { detail in
                ClassDetailsRow(title: detail.title, contents: detail.contents)
                    .padding(.vertical, 0.5)
                    .listRowInsets(EdgeInsets())
            }
        }
        .navigationBarTitle(self.cls.name, displayMode: .inline)
    }
}

struct ClassDetailsList_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetailsList(cls: ClassData(
            name: "力学1",
            description: "Week 1 Description",
            room: "W222",
            start: Date(),
            end: Date()
        ))
    }
}
