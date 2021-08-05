//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by joao camargo on 04/08/21.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView{
            ForEach(players) { player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView().previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
