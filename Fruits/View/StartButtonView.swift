//
//  StartButtonView.swift
//  Fruits
//
//  Created by 永原直樹 on 2022/11/25.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack {
                Text("Start")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.horizontal,16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 3)
            )
        }

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
