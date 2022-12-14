//
//  FruitaCard.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct FruitsCard: View {
    var fruits: Fruite
    @State private var isAnimation: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image(fruits.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
                Text(fruits.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x:2, y: 2)
                Text(fruits.headline)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .padding(.horizontal,10)
                    .padding(.bottom, 15 )
                StartButtonView()
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimation = true
                }
            }
        }//ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom)).cornerRadius(20)
        .padding(.horizontal, 20)
    }//VStack
}

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCard(fruits: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
