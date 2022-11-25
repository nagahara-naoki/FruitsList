//
//  FruitsDetailView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct FruitsDetailView: View {
    var fruits: Fruite
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruitsHeaderView(fruits: fruits)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        FruitsNutrientsView(fruits: fruits)
                        Text("learn more \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,20)
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruits.title)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruits: fruitsData[0])
    }
}
