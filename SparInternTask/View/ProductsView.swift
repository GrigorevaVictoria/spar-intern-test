//
//  ContentView.swift
//  SparInternTask
//
//  Created by Виктория Григорьева on 08.08.2024.
//

import SwiftUI

struct ProductsView: View {
    
    @StateObject var viewModel = ProductsViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        viewModel.isGridView.toggle()
                    }, label: {
                        Image(systemName: viewModel.isGridView ? "square.grid.2x2" : "rectangle.grid.1x2")
                            .foregroundColor(Color.green)
                    })
                    .frame(width: 40, height: 40)
                    .background(Color.secondaryColor)
                    .cornerRadius(12)
                    .padding()
                    Spacer()
                }
                
                if viewModel.isGridView {
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2)) {
                            ForEach(MockData.Products) { product in
                                ProductCardView(product: product)
                                    .shadow(color: Color.shadowColor.opacity(0.2), radius: 10)
                            }
                        }
                    }
                    .ignoresSafeArea()
                    .padding(.init(top: 0, leading: 22, bottom: 0, trailing: 22))
                } else {
                    List(MockData.Products) { product in
                        ProductRowView(product: product)
                            .frame(width: 375, height: 176)
                        
                    }
                    .listStyle(PlainListStyle())
                    .buttonStyle(BorderlessButtonStyle())
                    .ignoresSafeArea()
                }
            }
        }
    }
}

#Preview {
    ProductsView()
}
