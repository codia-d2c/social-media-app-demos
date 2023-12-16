//
//  Group1Model.swift
//
//  Created by codia-figma
//

import SwiftUI

class Group1Model: LayerCellCreatorModel<Group1Model> {
    var textText: String = ""
    var imageView4Path: String = ""
    var imageView5Path: String = ""
    var imageView2Path: String = ""
    var imageView3Path: String = ""
    var imageViewPath: String = ""
    var text1Text: String = ""

    init(cellCreator: @escaping ((Group1Model) -> AnyView),
         textText: String,
         imageView4Path: String,
         imageView5Path: String,
         imageView2Path: String,
         imageView3Path: String,
         imageViewPath: String,
         text1Text: String) {
        super.init(cellCreator: cellCreator)
        self.textText = textText
        self.imageView4Path = imageView4Path
        self.imageView5Path = imageView5Path
        self.imageView2Path = imageView2Path
        self.imageView3Path = imageView3Path
        self.imageViewPath = imageViewPath
        self.text1Text = text1Text
    }

    override func getMe() -> Group1Model {
        return self
    }
}
