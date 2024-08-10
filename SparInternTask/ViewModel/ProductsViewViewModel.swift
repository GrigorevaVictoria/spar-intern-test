//
//  ProductsViewViewModel.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 08.08.2024.
//

import SwiftUI

final class ProductsViewViewModel: ObservableObject {
    @Published var isShowingDetail = false
    @Published var isGridView: Bool = true
    @Published var isAmount: Bool = true
    
    
    func getDiscountedPrice(_ price: Double, _ discount: Double) -> Double {
        return price*(Double(discount)/100)
    }

    func getSmallCoins(_ discountedPrice: Double) -> String {
        let fractionalPart = discountedPrice.truncatingRemainder(dividingBy: 1)
        return  String(String(format: "%.2f", fractionalPart).dropFirst(2))
    }
    
    
}



