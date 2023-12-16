//
//  ImageBgButton.swift
//
//  Created by codia-figma
//

import SwiftUI

struct ImageBgButton: View {
    @State public var text4Text: String = "For you"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 0.06))
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .frame(width: 170)
                .offset(x: 6)
                HStack {
                    Spacer()
                        Text(text4Text)
                            .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                            .font(.custom("SFProText-Bold", size: 13))
                            .lineLimit(1)
                            .padding(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
                            .frame(alignment: .center)
                            .multilineTextAlignment(.center)
                    Spacer()
                }
        }
        .frame(width: 211.5, alignment: .topLeading)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct ImageBgButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageBgButton()
    }
}
