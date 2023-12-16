//
//  LayerViewgroup.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup: View {
    @State public var imageView20Path: String = "imageView20_1972"
    @State public var imageView21Path: String = "imageView21_1827"
    @State public var text20Text: String = "2"
    var body: some View {
        ZStack(alignment: .topLeading) {
            ImageImageview(
                imageView20Path: imageView20Path,
                imageView21Path: imageView21Path,
                text20Text: text20Text)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 15.92, trailing: 0))
                .frame(width: 38)
                .offset(x: 25.5)
        }
        .frame(width: 80, height: 52, alignment: .topLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 0.00))
    }
}

struct LayerViewgroup_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup()
    }
}
