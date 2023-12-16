//
//  LayerViewgroup2.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup2: View {
    @State public var imageViewPath: String = "imageView_1481843"
    @State public var text1Text: String = "Discover"
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(imageViewPath)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(text1Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                .font(.custom("SFProDisplay-Bold", size: 30))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
        .frame(height: 40, alignment: .top)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct LayerViewgroup2_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup2()
    }
}
