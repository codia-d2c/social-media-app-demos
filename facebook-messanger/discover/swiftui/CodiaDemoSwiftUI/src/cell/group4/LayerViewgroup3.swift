//
//  LayerViewgroup3.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup3: View {
    @State public var imageView9Path: String = "imageView9_1481777"
    @State public var text6Text: String = "Apple"
    var body: some View {
        VStack(alignment: .center, spacing: 7.5) {
            Image(imageView9Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text(text6Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.50))
                .font(.custom("SFProText-Regular", size: 13))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct LayerViewgroup3_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup3()
    }
}
