//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 3.10.2022.
//

import SwiftUI

struct FeaturedTabView: View {
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: TAB
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .previewDevice("iPhone 12 Pro")
      .background(Color.gray)
  }
}
