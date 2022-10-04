//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 4.10.2022.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            } //: Button
            
            Text("\(counter)")
            
            Button {
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }


        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
