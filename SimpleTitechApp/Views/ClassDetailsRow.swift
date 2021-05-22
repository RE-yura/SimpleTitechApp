//
//  ClassDetailsRow.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct ClassDetailsRow: View {
    let title: String;
    let contents: String;
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(self.title)
                    .padding(.bottom, 1.0)
                Text(self.contents)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
            .font(.subheadline)
            Spacer()
        }
        .padding(.vertical, 9.0)
        .border(width: 5, edges: [.leading], color: Color("MainColor"))
    }
}

struct ClassDetailsRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetailsRow(title: "アナウンスメント", contents: "フォーラム")
    }
}
