//
//  customBtn.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 09.08.2024.
//

import SwiftUI

struct CustomBtn: View {
    var body: some View {
        VStack {
            Image("basket")
                .resizable()
                .frame(width:16, height: 16)
                .scaledToFit()
                .foregroundStyle(.white)
                .background(Color.brandColor)
                .clipShape(.rect(cornerRadius: 40))
        }
        .frame(width:48, height: 36)
        .background(Color.brandColor)
        .clipShape(.rect(cornerRadius: 40))
    }
}

#Preview {
    CustomBtn()
}
