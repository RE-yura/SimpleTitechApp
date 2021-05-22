//
//  ClassRow.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct ClassRow: View {
    let cls: ClassData
    
    var body: some View {
        HStack {
            Rectangle()
                    .foregroundColor(Color("MainColor"))
                .frame(width: 5, height: 120)
            VStack(alignment: .leading) {
                Text(Date2String(date: self.cls.start))
                    .padding(.bottom)
                Text(Date2String(date: self.cls.end))
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 21.0)
            .font(.subheadline)
            
            VStack(alignment: .leading) {
                Text(self.cls.name)
                    .padding(.bottom)
                Text(self.cls.description)
                    .foregroundColor(.secondary)
            }
            .font(.subheadline)
            
            Spacer()
            
            Text(self.cls.room)
                .padding(.trailing)
                .font(.subheadline)
                .foregroundColor(Color("MainColor"))
        }
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassRow(cls: ClassData(
            name: "力学1",
            description: "Week 1 Description",
            room: "W222",
            start: Date(),
            end: Date()
        ))
    }
}
