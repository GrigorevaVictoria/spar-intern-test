//
//  ProductRowView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 08.08.2024.
//

import SwiftUI

struct ProductRowView: View {
    var product: Product
    
    var body: some View {
        HStack {
            ZStack(alignment: .topLeading) {
                Image(product.imageURL.isEmpty ? "empty-product" : product.imageURL)
                    .resizable()
                    .frame(width: 144, height: 144)
                    .scaledToFit()
                
                if let category = product.category {
                    CategoryBadge(categoryName: category.name, colorOfBadge: category.color)
                }
                VStack {
                    Spacer()
                    if product.showDiscount  {
                        Text("\(product.discountSize ?? 0)%")
                            .foregroundStyle(Color.discountRed)
                            .bold()
                    }
                }
                .frame(width: 144, height: 144, alignment: .trailing)
            }
            VStack {
                HStack {
                    VStack {
                        HStack {
                            RatingView(rating: product.rating)
                            Text("| \(product.reviews) отзывов")
                                .font(.system(size: 12))
                            Spacer()
                        }
                        HStack {
                            Text("\(product.name)")
                                .font(.system(size: 12))
                                .lineLimit(nil)
                            Spacer()
                        }
                        if let country = product.countryOfOrigin {
                            HStack {
                                Text("\(country) 🇫🇷")
                                    .font(.system(size: 12))
                                    .foregroundStyle(Color.secondaryText.opacity(0.6))
                                Spacer()
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        SideIconButtons()
                    }
                }
                BottomView(price: product.price, discount: product.discountSize, widthValue: 199)
            }
            .frame(width: 199, height: 144)
            .padding(.leading, 5)
        }
    }
}

#Preview {
    ProductRowView(product: MockData.sampleProduct)
}


