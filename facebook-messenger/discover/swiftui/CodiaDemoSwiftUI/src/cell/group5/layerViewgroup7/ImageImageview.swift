//
//  ImageImageview.swift
//
//  Created by codia-figma
//

import SwiftUI

struct ImageImageview: View {
    @State public var imageView20Path: String = "imageView20_1972"
    @State public var imageView21Path: String = "imageView21_1827"
    @State public var text20Text: String = "2"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(imageView20Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 29.96, height: 22.08, alignment: .topLeading)
                .offset(y: 6)
            Image(imageView21Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .topTrailing)
                .offset(x: 22)
            Text(text20Text)
                .foregroundColor(Color(red: 0.35, green: 0.83, blue: 0.22, opacity: 1.00))
                .font(.custom("SFProText-Bold", size: 13))
                .lineLimit(1)
                .padding(EdgeInsets(top: 1, leading: 0, bottom: 14.08, trailing: 0))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 26)
        }
        .frame(width: 38, alignment: .topLeading)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct ImageImageview_Previews: PreviewProvider {
    static var previews: some View {
        ImageImageview()
    }
}
