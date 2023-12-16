//
//  Group6.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group6: View {
    @State public var imageView4Path: String = "imageView4_1855"
    @State public var imageView5Path: String = "imageView5_1858"
    @State public var imageView2Path: String = "imageView2_1862"
    @State public var imageView3Path: String = "imageView3_1866"
    var body: some View {
        ZStack(alignment: .topLeading) {
            ImageView1(
                imageView4Path: imageView4Path,
                imageView5Path: imageView5Path)
                .frame(width: 24.5, height: 11)
            Image(imageView2Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15.27, height: 10.97, alignment: .topTrailing)
                .offset(x: 22.03)
            Image(imageView3Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 17, height: 10.67, alignment: .topTrailing)
                .offset(y: 0.34)
        }
        .frame(width: 66.83, height: 11.17, alignment: .topLeading)
    }
}

struct Group6_Previews: PreviewProvider {
    static var previews: some View {
        Group6()
    }
}
