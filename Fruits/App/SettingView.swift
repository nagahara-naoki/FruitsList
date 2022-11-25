//
//  SettingView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    GroupBox(
                        label:
                   SettingLabelView(labelText: "FRUCTUS", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical,4)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore  ut labore et dolore magna.").padding(.horizontal,10)
                        }
                    }
                    GroupBox(label:SettingLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore  ut labore et dolore magna")
                            .padding(.vertical,8)
                            .frame(minHeight:80)
                            .layoutPriority(1)
//                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("ReStart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("ReStart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                        
                    }
                    GroupBox(label:SettingLabelView(labelText: "APPLICATION", labelImage: "apps.iphone")) {
                        Divider().padding(.vertical, 4)
                     SettingRowView(name: "Developer", content: "Naoki/Nagahara")
                        SettingRowView(name: "Designer", content: "Naoki/Nagahara")
                        SettingRowView(name: "Website", linkLabel: "Google", linkDestination: "google.com")
                        
                    }
                }
                .navigationTitle("設定")
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark.app.fill")
                }))
                .padding()
            }
        }
    }
    
    struct SettingView_Previews: PreviewProvider {
        static var previews: some View {
            SettingView()
        }
    }
}
