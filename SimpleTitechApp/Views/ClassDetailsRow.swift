//
//  ClassDetailsRow.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct ClassDetailsRow: View {
    let title: String
    let contents: String
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(Color("MainColor"))
                .frame(maxWidth: 5, maxHeight: .infinity)
            HStack {
                VStack(alignment: .leading) {
                    Text(self.title)
                        .padding(.bottom, 1.0)
                    Text(self.contents)
                        .foregroundColor(.secondary)
                }
                .padding(.leading, 6.0)
                .font(.subheadline)
                
                Spacer()
            }
            .padding(.vertical, 12.0)
        }
        .frame(maxHeight: 200)
    }
}

struct ClassDetailsRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetailsRow(title: "アナウンスメント", contents: "フォーラム")
    }
}
