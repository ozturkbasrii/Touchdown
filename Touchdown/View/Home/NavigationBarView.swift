//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 3.10.2022.
//

import SwiftUI

struct NavigationBarView: View {
    
    //MARK: - PROPERTIES
    
    @State private var isAnimated: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Button {
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } // BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }


        } // HSTACK
    }
}

//MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
