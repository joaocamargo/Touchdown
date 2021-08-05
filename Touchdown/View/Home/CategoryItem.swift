//
//  CategoryItem.swift
//  Touchdown
//
//  Created by joao camargo on 05/08/21.
//

import SwiftUI

struct CategoryItem: View {
    let category: Category
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Spacer()
                } // hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
            })
    }
}


struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(category: categories[0]).previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
