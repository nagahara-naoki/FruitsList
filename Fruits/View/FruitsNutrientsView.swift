//
//  FruitsNutrientsView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct FruitsNutrientsView: View {
    var fruits: Fruite
    let nutrients:[String] = [
        "Energy","Sugar","Fat","Protein","Vitamin","Mineral"
    ]
    var body: some View {
        GroupBox {
            DisclosureGroup("100ｇあたりの栄養素"){
                ForEach(0..<nutrients.count, id:\.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
    
    struct FruitsNutrientsView_Previews: PreviewProvider {
        static var previews: some View {
            FruitsNutrientsView(fruits: fruitsData[0])
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 480))
        }
    }
}
