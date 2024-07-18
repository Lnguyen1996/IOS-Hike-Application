//
//  CardView.swift
//  Hike
//
//  Created by Hieu Nguyen on 6/1/24.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage(){
        var possibleNumbers = Set(1...5)
        possibleNumbers.remove(imageNumber)
        
        if let newNumber = possibleNumbers.randomElement() {
            imageNumber = newNumber
        }
        
        print("Result: New Image Number =\(imageNumber)")
        print("--- The End---")
        print("\n")
    }
    
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
                            isShowingSheet.toggle()
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet)
                        {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents(
                                    [
                                        .medium,
                                        .large
                                    ]
                                )
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
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                //MARK: - FOOTER
                
                Button{
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 0.25,x: 1,y: 2)
                }
                .buttonStyle(GradientButton())
                
            }
        } //: CARD
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
