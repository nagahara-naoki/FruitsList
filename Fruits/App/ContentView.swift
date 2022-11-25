//
//  ContentView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct ContentView: View {
    var fruits:[Fruite] = fruitsData
    
    @State var isShoeingSetting: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitsDetailView(fruits: item)) {
                        FruitsRowView(fruits: item)
                            .padding(.vertical,4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShoeingSetting = true
            }, label: {
                Image(systemName: "list.dash")
            })).sheet(isPresented: $isShoeingSetting) {
                SettingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
