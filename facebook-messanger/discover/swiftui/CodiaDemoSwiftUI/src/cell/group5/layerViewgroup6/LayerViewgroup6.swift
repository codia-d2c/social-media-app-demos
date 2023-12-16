//
//  LayerViewgroup6.swift
//
//  Created by codia-figma
//

import SwiftUI

struct LayerViewgroup6: View {
    @State public var text10Text: String = "More"
    @State public var imageView15Path: String = "imageView15_1481789"
    @State public var text11Text: String = "Microsoft"
    @State public var text12Text: String = "Science, Technology & Engineering\nOur mission is to empower every person…"
    @State public var imageView16Path: String = "imageView16_1481799"
    @State public var text13Text: String = "Instagram"
    @State public var text14Text: String = "Business\nBringing you closer to the people and thi…"
    @State public var imageView17Path: String = "imageView17_1481794"
    @State public var text15Text: String = "Disney"
    @State public var text16Text: String = "Brand\nDisney magic right at your fingertips"
    @State public var imageView18Path: String = "imageView18_1481784"
    @State public var text17Text: String = "Facebook"
    @State public var text18Text: String = "Website\nWelcome to the Facebook chat bot. Use i…"
    var body: some View {
        VStack(alignment: .trailing, spacing: 7.5) {
            FrameView(text10Text: text10Text)
                .frame(height: 24)
            Group7(
                imageView15Path: imageView15Path,
                text11Text: text11Text,
                text12Text: text12Text,
                imageView16Path: imageView16Path,
                text13Text: text13Text,
                text14Text: text14Text,
                imageView17Path: imageView17Path,
                text15Text: text15Text,
                text16Text: text16Text,
                imageView18Path: imageView18Path,
                text17Text: text17Text,
                text18Text: text18Text)
                .frame(height: 304)
        }
        .frame(height: 335.5, alignment: .top)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct LayerViewgroup6_Previews: PreviewProvider {
    static var previews: some View {
        LayerViewgroup6()
    }
}
