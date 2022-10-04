//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 4.10.2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                
                ScrollView (.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
            
        } //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                 ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
