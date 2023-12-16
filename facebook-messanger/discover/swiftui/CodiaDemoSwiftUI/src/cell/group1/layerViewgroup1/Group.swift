//
//  Group.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group: View {
    @State public var textText: String = "9:41"
    @State public var imageView4Path: String = "imageView4_1855"
    @State public var imageView5Path: String = "imageView5_1858"
    @State public var imageView2Path: String = "imageView2_1862"
    @State public var imageView3Path: String = "imageView3_1866"
    var body: some View {
        HStack(alignment: .center, spacing: 212.17) {
            Text(textText)
                .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09, opacity: 1.00))
                .font(.custom("SFProText-Semibold", size: 15))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
            Group6(
                imageView4Path: imageView4Path,
                imageView5Path: imageView5Path,
                imageView2Path: imageView2Path,
                imageView3Path: imageView3Path)
                .frame(width: 66.83, height: 11.17)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct Group_Previews: PreviewProvider {
    static var previews: some View {
        Group()
    }
}
