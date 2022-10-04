//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 4.10.2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                 )
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
