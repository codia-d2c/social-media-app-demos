//
//  Group4Model.swift
//
//  Created by codia-figma
//

import SwiftUI

class Group4Model: LayerCellCreatorModel<Group4Model> {
    var text5Text: String = ""
    var imageView9Path: String = ""
    var text6Text: String = ""
    var imageView10Path: String = ""
    var text7Text: String = ""
    var imageView11Path: String = ""
    var text8Text: String = ""

    init(cellCreator: @escaping ((Group4Model) -> AnyView),
         text5Text: String,
         imageView9Path: String,
         text6Text: String,
         imageView10Path: String,
         text7Text: String,
         imageView11Path: String,
         text8Text: String) {
        super.init(cellCreator: cellCreator)
        self.text5Text = text5Text
        self.imageView9Path = imageView9Path
        self.text6Text = text6Text
        self.imageView10Path = imageView10Path
        self.text7Text = text7Text
        self.imageView11Path = imageView11Path
        self.text8Text = text8Text
    }

    override func getMe() -> Group4Model {
        return self
    }
}
