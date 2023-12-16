//
//  Group2.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group2: View {
    @State var model: Group2Model

    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.05))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(self.model.text2Text)
                .foregroundColor(Color(red: 0.56, green: 0.56, blue: 0.58, opacity: 1.00))
                .font(.custom("SFProText-Regular", size: 17))
                .lineLimit(1)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 16, trailing: 0))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 46)
            Image(self.model.imageView7Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15.5, height: 15.7, alignment: .leading)
                .offset(x: 24, y: 13.8)
        }
        .frame(width: 375, height: 48, alignment: .topLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
    }
}
