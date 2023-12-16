//
//  Group4.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group4: View {
    @State var model: Group4Model

    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(self.model.text5Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                .font(.custom("SFProDisplay-Bold", size: 20))
                .lineLimit(1)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: -1))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(y: 8)
            LayerListview(
                imageView9Path: model.imageView9Path,
                text6Text: model.text6Text,
                imageView10Path: model.imageView10Path,
                text7Text: model.text7Text,
                imageView11Path: model.imageView11Path,
                text8Text: model.text8Text)
                .frame(width: 245, height: 82.5)
                .offset(x: 4, y: 40.5)
        }
        .frame(width: 375, height: 133, alignment: .topLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
    }
}
