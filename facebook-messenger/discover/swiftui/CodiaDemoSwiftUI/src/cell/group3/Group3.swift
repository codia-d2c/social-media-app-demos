//
//  Group3.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group3: View {
    @State var model: Group3Model

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            ImageBgButton(text4Text: model.text4Text)
                .frame(width: 211.5)
            Text(self.model.text3Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.50))
                .font(.custom("SFProText-Bold", size: 13))
                .lineLimit(1)
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
        }
        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 0))
        .frame(width: 375, height: 44, alignment: .topLeading)
        .background(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
    }
}
