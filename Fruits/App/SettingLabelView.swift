//
//  SettingLabelView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct SettingLabelView: View {
    var labelText: String
    var labelImage:String
    
    var body: some View {
        HStack {
            Text(labelText)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "FRUITS", labelImage: "info.circle")
    }
}
