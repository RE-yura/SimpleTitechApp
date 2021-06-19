//
//  ClassList.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct ClassList: View {
    init() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    let classes = [
        ClassData(
            name: "力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1力学1",
            description: "Week 1 Description",
            room: "W222",
            start: Date(),
            end: Date()
        ),
        ClassData(
            name: "電磁気学2",
            description: "Week 2 Description",
            room: "W222",
            start: Date(),
            end: Date()
        ),
        ClassData(
            name: "化学3",
            description: "Week 3 Description",
            room: "W222",
            start: Date(),
            end: Date()
        )
    ]
        
    var body: some View {
        NavigationView {
            List {
                ForEach(classes) { cls in
                    HStack {
                        ClassRow(cls: cls)
                        NavigationLink(destination: ClassDetailsList(cls: cls)) {
                            EmptyView()
                        }
                        .frame(width: 0)
                        .opacity(0)

                    }
                    .padding(.vertical, 2.0)
                    .listRowInsets(EdgeInsets())
                }
            }
            .navigationBarTitle("スケジュール", displayMode: .inline)
            .listRowInsets(EdgeInsets())
        }
        .accentColor(Color("MainColor"))
    }
}

struct ClassList_Previews: PreviewProvider {
    static var previews: some View {
        ClassList()
            .preferredColorScheme(.light)
    }
}
