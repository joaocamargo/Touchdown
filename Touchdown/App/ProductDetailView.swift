//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by joao camargo on 06/08/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment:.leading, spacing: 5) {
            //navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding()
            //detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                
                RatingSizesDetailView()
                    .padding(.top,25)
                    .padding(.bottom,10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavoriteDetailView()
                    .padding(.vertical,10)
                
                Spacer()
                
                AddToCardDetailView().padding(.bottom,20)
            } // vstack
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top,-105)
            )
            //detail body part
            //rating sizes
            //description
            //quantity + favorite
            //add to cart
            
        } //vstack
        .zIndex(0)
        .ignoresSafeArea(.all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                          green: shop.selectedProduct?.green ?? sampleProduct.green,
                          blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
        .environmentObject(Shop()).previewLayout(.fixed(width: 375, height: 812))
    }
}
