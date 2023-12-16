//
//  LayerViewgroup5.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup5: View {
    @State public var imageView11Path: String = "imageView11_1481774"
    @State public var text8Text: String = "Airbnb"
    var body: some View {
        VStack(alignment: .center, spacing: 7.5) {
            Image(imageView11Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text(text8Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.50))
                .font(.custom("SFProText-Regular", size: 13))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct LayerViewgroup5_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup5()
    }
}
