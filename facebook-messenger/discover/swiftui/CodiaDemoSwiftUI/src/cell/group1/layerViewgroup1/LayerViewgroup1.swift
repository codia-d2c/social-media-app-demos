//
//  LayerViewgroup1.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup1: View {
    @State public var textText: String = "9:41"
    @State public var imageView4Path: String = "imageView4_1855"
    @State public var imageView5Path: String = "imageView5_1858"
    @State public var imageView2Path: String = "imageView2_1862"
    @State public var imageView3Path: String = "imageView3_1866"
    var body: some View {
        HStack(alignment: .center) {
            Group(
                textText: textText,
                imageView4Path: imageView4Path,
                imageView5Path: imageView5Path,
                imageView2Path: imageView2Path,
                imageView3Path: imageView3Path)
        }
        .padding(EdgeInsets(top: 0, leading: 4.5, bottom: 0, trailing: 4.5))
        .frame(height: 18, alignment: .top)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct LayerViewgroup1_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup1()
    }
}
