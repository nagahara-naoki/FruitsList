//
//  OnboardingView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruite] = fruitsData
    
    var body: some View {
        TabView  { 
            ForEach(fruits[0...5]) { item in
                FruitsCard(fruits: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
