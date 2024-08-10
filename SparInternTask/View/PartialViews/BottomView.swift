//
//  BottomButtonsView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 09.08.2024.
//

import SwiftUI

struct BottomView: View {
    
    @StateObject var viewModel = ProductsViewViewModel()
    
    @State var buttonPressed: Bool = false
    @State var isOn: Bool = true
    
    var price: Double
    var discount: Int?
    var widthValue: CGFloat
    
    var body: some View {
        
        if(!buttonPressed) {
            HStack {
                if let discount = discount {
                    let discountedPrice = price*(Double(discount)/100)
                    
                    VStack(spacing: 0) {
                        Spacer()
                        HStack(spacing: 2) {
                            Text("\(discountedPrice, specifier: "%.0f")")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            
                            Text(viewModel.getSmallCoins(discountedPrice))
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                            Image("units")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                            Spacer()
                        }
                        HStack {
                            Text("\(price.twoNums)")
                                .font(.system(size: 12))
                                .strikethrough()
                            Spacer()
                        }
                    }
                } else {
                    Text("\(price.twoNums)")
                        .font(.system(size: 12))
                }
                Spacer()
                VStack {
                    Spacer()
                    Button {
                        buttonPressed.toggle()
                    } label: {
                        CustomBtn()
                    }
                }
            }
            .frame(width: widthValue)
        } else {
            VStack {
                StepperToggleView( price: price, widthValue: widthValue)
            }
        }
    }
}

#Preview {
    BottomView(price: 199.90, widthValue: 199)
}
