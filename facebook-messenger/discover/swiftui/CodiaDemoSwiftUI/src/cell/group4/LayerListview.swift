//
//  LayerListview.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerListview: View {
    @State public var imageView9Path: String = "imageView9_1481777"
    @State public var text6Text: String = "Apple"
    @State public var imageView10Path: String = "imageView10_1481771"
    @State public var text7Text: String = "Samsung"
    @State public var imageView11Path: String = "imageView11_1481774"
    @State public var text8Text: String = "Airbnb"
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            LayerViewgroup3(
                imageView9Path: imageView9Path,
                text6Text: text6Text)
            LayerViewgroup4(
                imageView10Path: imageView10Path,
                text7Text: text7Text)
            LayerViewgroup5(
                imageView11Path: imageView11Path,
                text8Text: text8Text)
        }
        .frame(width: 245, height: 82.5, alignment: .topLeading)
    }
}

struct LayerListview_Previews: PreviewProvider {
    static var previews: some View {
        LayerListview()
    }
}
