//
//  ClassRow.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct ClassRow: View {
    let cls: ClassData;
    
    var body: some View {
        HStack {
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
            .padding(.leading, 7.0)
            .font(.subheadline)
            
            Spacer()
            
            Text(self.cls.room)
                .padding(.trailing)
                .font(.subheadline)
                .foregroundColor(Color("MainColor"))
        }
        .padding(.vertical, 26.0)
        .border(width: 8, edges: [.leading], color: Color("MainColor"))
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassRow(cls: ClassData())
    }
}
