//
//  ProductCardView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 08.08.2024.
//

import SwiftUI

struct ProductCardView: View {
    var product: Product
    
    var body: some View {
                VStack {
                    ZStack(alignment: .topLeading) {
                        Image(product.imageURL.isEmpty ? "empty-product" : product.imageURL)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 168)
                            .frame(minHeight: 122)
                        VStack {
                            SideIconButtons()
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        if let category = product.category {
                            CategoryBadge(categoryName: category.name, colorOfBadge: category.color)
                                .font(.system(size: 12))
                        }
                        VStack {
                            Spacer()
                            HStack {
                                RatingView(rating: product.rating)
                            }
                            .padding(.horizontal, 8)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    //.frame(minHeight: 138)
                    .frame(maxHeight: 168)
                    
                    HStack {
                        Text(product.name)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.secondaryText.opacity(0.8))
                        Spacer()
                    }
                    .padding(.bottom, 2)
                    .padding(.horizontal, 8)
                    
                    if let country = product.countryOfOrigin {
                        HStack {
                            Text("\(country) 🇫🇷")
                                .font(.system(size: 12))
                                .foregroundStyle(Color.secondaryText.opacity(0.6))
                            Spacer()
                        }
                        .padding(.horizontal, 8)
                    }
                    BottomView(price: product.price, discount: product.discountSize, widthValue: 160)
                        .padding(.bottom, 8)
                        .padding(.horizontal, 8)
                }
                .frame(width: 168, height: 278)
                .background(.white)
                .clipShape(.rect(topLeadingRadius: 16, bottomLeadingRadius: 20, bottomTrailingRadius: 20, topTrailingRadius: 16))
    }
}

#Preview {
    ProductCardView(product: MockData.sampleProduct)
}
