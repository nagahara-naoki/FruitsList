//
//  FruitsHeaderView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct FruitsHeaderView: View {
    var fruits:Fruite
    @State private var isAnimationImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimationImage ?1.0:0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimationImage = true
            }
        }
    }
}

struct FruitsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsHeaderView(fruits: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
