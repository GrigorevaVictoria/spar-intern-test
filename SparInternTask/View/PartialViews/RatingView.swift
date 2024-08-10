//
//  RatingView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 10.08.2024.
//

import SwiftUI

struct RatingView: View {
    var rating: Double
    var body: some View {
        Image(systemName: "star.fill")
            .resizable()
            .foregroundColor(.yellow)
            .frame(width: 12, height: 12)
            .scaledToFit()
        Text("\(rating, specifier: "%.1f")")
            .font(.system(size: 12))
    }
}

#Preview {
    RatingView(rating: 4.5)
}
