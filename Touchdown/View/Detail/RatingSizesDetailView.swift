//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by joao camargo on 06/08/21.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    let sizes: [String] = ["XS","S","M","L","XL","XXL"]
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // ratings
            
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote
                    )
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            //sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.black)
                            .foregroundColor(colorGray)
                            .frame(width: 32, height: 32, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 2))
                        
                    }
                })
            })
            
        }) // : Hstack
        
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView().previewLayout(.sizeThatFits).padding()
    }
}
