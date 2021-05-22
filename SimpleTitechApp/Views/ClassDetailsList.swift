//
//  ClassDetailsList.swift
//  SimpleTitechApp
//
//  Created by Yura Aoyama on 2021/05/22.
//

import SwiftUI

struct Detail: Hashable {
    let title: String;
    let contents: String;
}

struct ClassDetailsList: View {
    let cls: ClassData;
    
    let details = [
        Detail(title: "アナウンスメント", contents: "フォーラム"),
        Detail(title: "講義スライド", contents: "ファイル"),
        Detail(title: "zoom録画", contents: "URL"),
    ]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            Image("ic_back")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                .foregroundColor(Color("MainColor"))
        }
    }
    
    var body: some View {
        List {
            ForEach(details, id: \.hashValue) { detail in
                ClassDetailsRow(title: detail.title, contents: detail.contents)
                    .padding(.vertical, 0.5)
                    .listRowInsets(EdgeInsets())
            }
        }
        .navigationBarTitle(self.cls.name, displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct ClassDetailsList_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetailsList(cls: ClassData())
    }
}
