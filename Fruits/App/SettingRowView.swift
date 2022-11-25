//
//  SettingRowView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct SettingRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        HStack {
            Text(name).foregroundColor(Color(.gray))
            Spacer()
            if (content != nil) {
                Text(content!)
            }else if(linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string:"https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square")
            } else {
                EmptyView()
            }
        }.padding(.vertical,2)
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "naoki")
            SettingRowView(name: "WebSite", linkLabel: "Swift UI", linkDestination: "google.com")
        }
        
    }
}
