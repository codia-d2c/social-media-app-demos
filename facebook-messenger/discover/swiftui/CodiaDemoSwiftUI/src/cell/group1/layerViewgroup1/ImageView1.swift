//
//  ImageView1.swift
//
//  Created by codia-figma
//

import SwiftUI

struct ImageView1: View {
    @State public var imageView4Path: String = "imageView4_1855"
    @State public var imageView5Path: String = "imageView5_1858"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(imageView4Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22, height: 10.5, alignment: .trailing)
                .offset(x: 42.33, y: 0.67)
            Image(imageView5Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 1.5, height: 3.87, alignment: .trailing)
                .offset(x: 65.33, y: 4.17)
            Rectangle()
                .fill(Color(red: 0.02, green: 0.02, blue: 0.02, opacity: 1.00))
                .clipShape(RoundedRectangle(cornerRadius: 1))
                .frame(width: 18, height: 6.5)
                .offset(x: 44.33, y: 2.67)
        }
        .frame(width: 24.5, height: 11, alignment: .topLeading)
    }
}

struct ImageView1_Previews: PreviewProvider {
    static var previews: some View {
        ImageView1()
    }
}
