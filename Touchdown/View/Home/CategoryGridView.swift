//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by joao camargo on 05/08/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnsSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockWise: false),footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                     CategoryItem(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical,10)
            
        }
        )
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView().previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
