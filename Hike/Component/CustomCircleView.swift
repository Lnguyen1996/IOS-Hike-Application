//
//  CustomCircleView.swift
//  Hike
//
//  Created by Lam Nguyen on 6/2/24.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        Circle()
            .fill(
                LinearGradient(colors: [Color("ColorIndigoMedium"),
                                        Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 256,height: 256)
        
    }
}

#Preview {
    CustomCircleView()
}
