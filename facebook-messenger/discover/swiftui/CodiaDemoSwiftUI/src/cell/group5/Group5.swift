//
//  Group5.swift
//
//  Created by codia-figma
//

import SwiftUI

struct Group5: View {
    @State var model: Group5Model

    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .frame(height: 429)
            LayerViewgroup6(
                text10Text: model.text10Text,
                imageView15Path: model.imageView15Path,
                text11Text: model.text11Text,
                text12Text: model.text12Text,
                imageView16Path: model.imageView16Path,
                text13Text: model.text13Text,
                text14Text: model.text14Text,
                imageView17Path: model.imageView17Path,
                text15Text: model.text15Text,
                text16Text: model.text16Text,
                imageView18Path: model.imageView18Path,
                text17Text: model.text17Text,
                text18Text: model.text18Text)
                .frame(height: 335.5)
                .offset(y: 17.5)
            Rectangle()
                .fill(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.00))
                .frame(height: 76)
                .offset(y: 353)
            Image(self.model.imageView14Path)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60, alignment: .bottomLeading)
                .offset(x: 16, y: 361)
            Text(self.model.text9Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                .font(.custom("SFProText-Semibold", size: 17))
                .lineLimit(1)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .offset(x: 88, y: 362.5)
            LayerViewgroup7(
                text19Text: model.text19Text,
                line1Path: model.line1Path,
                tab1Path: model.tab1Path,
                imageView20Path: model.imageView20Path,
                imageView21Path: model.imageView21Path,
                text20Text: model.text20Text,
                tab2Path: model.tab2Path)
                .frame(height: 94.5)
                .offset(y: 384)
        }
        .frame(width: 375, height: 478.5, alignment: .topLeading)
    }
}
