//
//  SideIconButtons.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 09.08.2024.
//

import SwiftUI

struct SideIconButtons: View {
    @State var likeButtonPressed: Bool = false
    @State var checkButtonPressed: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                checkButtonPressed.toggle()
            }, label: {
                Image("check")
                    .resizable()
                    .frame(width:16, height: 16)
                    .foregroundColor(checkButtonPressed ? Color.brandColor : Color.gray)
                    .scaledToFill()
                    
            })
            Button(action: {
                likeButtonPressed.toggle()
            }, label: {
                Image(likeButtonPressed ? "heartGreen" : "heart")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(likeButtonPressed ? Color.brandColor : Color.gray)
                    .scaledToFill()
            })
        }
        .frame(width:32, height: 64)
        .background(Color.white.opacity(0.8))
        .clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    SideIconButtons()
}
