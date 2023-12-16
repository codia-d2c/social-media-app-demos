//
//  LayerViewgroup4.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup4: View {
    @State public var imageView10Path: String = "imageView10_1481771"
    @State public var text7Text: String = "Samsung"
    var body: some View {
        VStack(alignment: .center, spacing: 7.5) {
            Image(imageView10Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text(text7Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.50))
                .font(.custom("SFProText-Regular", size: 13))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct LayerViewgroup4_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup4()
    }
}
