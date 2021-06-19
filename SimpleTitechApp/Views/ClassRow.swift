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
                .frame(maxWidth: 5, maxHeight: .infinity)
            HStack() {
                VStack(alignment: .leading) {
                    Text(Date2String(date: self.cls.start))
                        .padding(.bottom, 10.0)
                    Text(Date2String(date: self.cls.end))
                        .foregroundColor(.secondary)
                }
                .padding(.leading, 8.0)
                .font(.subheadline)
                
                VStack(alignment: .leading) {
                    Text(self.cls.name)
                        .padding(.bottom, 10.0)
                        .lineLimit(2)
                    Text(self.cls.description)
                        .foregroundColor(.secondary)
                }
                .padding(.leading, 8.0)
                .font(.subheadline)
                
                Spacer()
                
                Text(self.cls.room)
                    .padding(.trailing)
                    .font(.subheadline)
                    .foregroundColor(Color("MainColor"))
            }
            .padding(.vertical, 12.0)
        }
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassRow(cls: ClassData(
            name: "力学11力学11力学11力学11力学11力学力学11力学11力学11力学11力学11力学11力学11力学11力学11力学11",
            description: "Week 1 Description",
            room: "W222",
            start: Date(),
            end: Date()
        ))
        .preferredColorScheme(.dark)
    }
}
