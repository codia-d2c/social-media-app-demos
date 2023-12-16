//
//  FrameView.swift
//
//  Created by codia-figma
//

import SwiftUI

struct FrameView: View {
    @State public var text10Text: String = "More"
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text(text10Text)
                .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00, opacity: 1.00))
                .font(.custom("SFProDisplay-Bold", size: 20))
                .lineLimit(1)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: -1))
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
        }
        .frame(height: 24, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .clipped()
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
