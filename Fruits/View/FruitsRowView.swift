//
//  FruitsRowView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct FruitsRowView: View {
    var fruits: Fruite
    
    var body: some View {
        HStack {
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color:Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 3, x:2, y:2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
            VStack( alignment: .leading ,spacing: 10) {
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct FruitsRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRowView(fruits: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
