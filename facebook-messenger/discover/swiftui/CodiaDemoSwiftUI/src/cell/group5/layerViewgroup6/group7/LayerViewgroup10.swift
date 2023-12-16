//
//  LayerViewgroup10.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup10: View {
    @State public var imageView17Path: String = "imageView17_1481794"
    @State public var text15Text: String = "Disney"
    @State public var text16Text: String = "Brand\nDisney magic right at your fingertips"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(imageView17Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                .frame(width: 60, alignment: .leading)
                .frame(maxHeight: .infinity, alignment: .top)
                .offset(x: 16)
            Text(text15Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                .font(.custom("SFProText-Semibold", size: 17))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 88, y: 9.5)
            Text(text16Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.50))
                .font(.custom("SFProText-Regular", size: 13))
                .padding(EdgeInsets(top: 0, leading: 88, bottom: 0, trailing: -1))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(y: 31)
        }
        .frame(height: 76, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
    }
}

struct LayerViewgroup10_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup10()
    }
}
