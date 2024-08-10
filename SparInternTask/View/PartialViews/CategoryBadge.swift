//
//  CategoryBadge.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 09.08.2024.
//

import SwiftUI

struct CategoryBadge: View {
    var categoryName: String
    var colorOfBadge: Color
    
    var body: some View {
        Text(categoryName)
            .font(.system(size: 10))
            .padding()
            .frame(height: 16)
            .background(colorOfBadge)
            .foregroundColor(.white)
            .clipShape(
                .rect(
                    topLeadingRadius: 6,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 6,
                    topTrailingRadius: 6
                )
            )
    }
}

#Preview {
    CategoryBadge(categoryName: "Удар по ценам", colorOfBadge: .categoryGreen)
}
