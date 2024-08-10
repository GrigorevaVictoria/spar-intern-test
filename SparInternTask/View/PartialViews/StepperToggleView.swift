//
//  StepperView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 09.08.2024.
//

import SwiftUI

struct StepperToggleView: View {
    
    @StateObject var viewModel = ProductsViewViewModel()
    var price: Double
    var widthValue: CGFloat
    @State var valueOfWeight: Double = 0.1
    @State var valueOfAmount: Int = 1
    
    var body: some View {
        
        ToggleView(isAmount: $viewModel.isAmount, widthValue: widthValue)
            .frame(width: widthValue)
                
        HStack(spacing: 0) {
            Button(action: {
                if(viewModel.isAmount) {
                    if(valueOfAmount>1) {
                        valueOfAmount -= 1
                    }
                } else {
                    if(valueOfWeight>0.1) {
                        valueOfWeight -= 0.1
                    }
                }
            }, label: {
                Image(systemName: "minus")
                    .frame(width:36, height: 36)
                    .foregroundColor(.white)
                    .background(Color.brandColor)
                    .clipShape(.rect(topLeadingRadius: 20 , bottomLeadingRadius: 20, bottomTrailingRadius: 0, topTrailingRadius: 0))
                    .bold()
            })
            
            if(viewModel.isAmount) {
                Text("\(valueOfAmount)")
                    .bold()
                    .frame(width: widthValue - 74, height: 36)
                    .foregroundColor(.white)
                    .background(Color.brandColor)
            } else {
                VStack (spacing: 1) {
                    Text("\(valueOfWeight, specifier: "%.1f") кг")
                        .font(.system(size: 16))
                        .bold()
                    Text("~\((price*valueOfWeight).twoNums)")
                        .font(.system(size: 12))
                }
                .frame(width: widthValue - 74, height: 36)
                .foregroundColor(.white)
                .background(Color.brandColor)
            }

            Button(action: {
                if(viewModel.isAmount) {
                    valueOfAmount += 1
                } else {
                    valueOfWeight += 0.1
                }
            }, label: {
                Image(systemName: "plus")
                    .frame(width: 36, height: 36)
                    .foregroundColor(.white)
                    .background(Color.brandColor)
                    .clipShape(.rect(topLeadingRadius: 0 , bottomLeadingRadius: 0, bottomTrailingRadius: 20, topTrailingRadius: 20))
                    .bold()
            })
        }
    }
}

#Preview {
    StepperToggleView(price: 199.8, widthValue: 198)
}
