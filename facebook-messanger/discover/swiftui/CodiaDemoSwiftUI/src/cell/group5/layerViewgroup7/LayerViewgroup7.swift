//
//  LayerViewgroup7.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup7: View {
    @State public var text19Text: String = "Burget Restaurant\nDedicated to everyone who says, i’m lovi…"
    @State public var line1Path: String = "line1_1809"
    @State public var tab1Path: String = "tab1_1969"
    @State public var imageView20Path: String = "imageView20_1972"
    @State public var imageView21Path: String = "imageView21_1827"
    @State public var text20Text: String = "2"
    @State public var tab2Path: String = "tab2_1973"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text19Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.50))
                .font(.custom("SFProText-Regular", size: 13))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 88)
            Rectangle()
                .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 0.60))
            Image(line1Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 1, alignment: .top)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(y: 8.5)
            Image(tab1Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 52, alignment: .topTrailing)
                .offset(x: 227, y: 8.5)
            LayerViewgroup(
                imageView20Path: imageView20Path,
                imageView21Path: imageView21Path,
                text20Text: text20Text)
                .frame(width: 80, height: 52)
                .offset(x: 147, y: 8.5)
            Image(tab2Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 52, alignment: .topLeading)
                .offset(x: 67, y: 8.5)
            Rectangle()
                .fill(Color(red: 0.02, green: 0.02, blue: 0.02, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 2.5))
                .frame(width: 134, height: 5)
                .offset(x: 121, y: 80.5)
        }
        .frame(height: 94.5, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct LayerViewgroup7_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup7()
    }
}
