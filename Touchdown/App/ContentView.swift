//
//  ContentView.swift
//  Touchdown
//
//  Created by joao camargo on 04/08/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - properties
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0){
                        FeatureTabView()
                            .padding(.vertical)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        CategoryGridView()
                            .padding()
                        FooterView()
                            .padding(.horizontal)
                    }
                })
           
            }.background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //ztack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}