//
//  CardView.swift
//  Hike
//
//  Created by Hieu Nguyen on 6/1/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(colors: [Color("ColorIndigoMedium"),
                                                Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 256,height: 256)
                
                
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        } //: CARD
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}