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
            VStack {
                // MARK: -Header
                VStack (alignment:.leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                                colors: [.customGrayLight,.customGrayMedium], startPoint: .top,
                            endPoint: .bottom))
                        
                        Spacer()
                        
                        Button{
                            print("The button was pressed")
                        }label: {
                             CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor aactivity for friends and families")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,30)
                //MARK: - MAIN CONTENT
                
                
                
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
                
                //MARK: - FOOTER
            }
        } //: CARD
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
