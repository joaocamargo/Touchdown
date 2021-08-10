//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by joao camargo on 06/08/21.
//

import SwiftUI

struct AddToCardDetailView: View {
    
    @EnvironmentObject var shop : Shop
    
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }).padding(15)
        .background(Color(
                        red: shop.selectedProduct?.red ??  sampleProduct.red,
                        green: shop.selectedProduct?.green ??  sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView().environmentObject(Shop()).previewLayout(.sizeThatFits)
            .padding()
    }
}
