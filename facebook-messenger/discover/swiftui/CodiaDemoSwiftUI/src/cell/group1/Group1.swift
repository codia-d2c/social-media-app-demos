//
//  Group1.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group1: View {
    @State var model: Group1Model

    var body: some View {
        VStack(alignment: .center, spacing: 24) {
            LayerViewgroup1(
                textText: model.textText,
                imageView4Path: model.imageView4Path,
                imageView5Path: model.imageView5Path,
                imageView2Path: model.imageView2Path,
                imageView3Path: model.imageView3Path)
                .frame(height: 18)
            LayerViewgroup2(
                imageViewPath: model.imageViewPath,
                text1Text: model.text1Text)
                .frame(height: 40)
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 12, trailing: 10))
        .frame(width: 375, height: 108, alignment: .bottomLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 0.60))
    }
}
