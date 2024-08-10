//
//  ToggleView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 09.08.2024.
//

import SwiftUI


struct CustomToggleStyle: ToggleStyle {
    
    var onColor: Color
    var offColor: Color
    var thumbColor: Color
    var widthValue: CGFloat
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack (spacing: 0) {
            configuration.label
                .font(.body)
            RoundedRectangle(cornerRadius: 8, style: .circular)
                .fill(configuration.isOn ? onColor : offColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(thumbColor)
                        .frame(width: widthValue/2 - 2, height: 24)
                        .padding(2)
                        .foregroundStyle(configuration.isOn ? Color.gray : Color.black)
                        .offset(x: configuration.isOn ? widthValue/4-4 : -(widthValue/4-4))
                )
                .overlay(
                    HStack {
                        Text("Шт")
                            .font(.system(size: 14))
                            .foregroundColor(configuration.isOn  ? .gray : .black)
                            .frame(width: widthValue/2+2, alignment: .center)
                        
                        Spacer()
                        
                        Text("Кг")
                            .font(.system(size: 14))
                            .foregroundColor(configuration.isOn  ? .black : .gray)
                            .frame(width: widthValue/2+2, alignment: .center)
                    }
                )
        }
        .frame(width: widthValue, height: 28)
    }
}

struct ToggleView: View {
    @State var isOn: Bool = false
    @Binding var isAmount: Bool
    var widthValue: CGFloat
    
    var body: some View {
        VStack {
            Toggle("", isOn: $isOn)
                .toggleStyle(CustomToggleStyle(onColor: Color.secondaryColor, offColor: Color.secondaryColor, thumbColor: .white, widthValue: widthValue))
                .onTapGesture {
                    isOn.toggle()
                    isAmount.toggle()
                }
        }
    }
}

#Preview {
    ToggleView(isAmount: .constant(false), widthValue: 189)
}
