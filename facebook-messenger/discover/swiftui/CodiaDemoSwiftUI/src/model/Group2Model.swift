//
//  Group2Model.swift
//
//  Created by codia-figma
//

import SwiftUI

class Group2Model: LayerCellCreatorModel<Group2Model> {
    var text2Text: String = ""
    var imageView7Path: String = ""

    init(cellCreator: @escaping ((Group2Model) -> AnyView),
         text2Text: String,
         imageView7Path: String) {
        super.init(cellCreator: cellCreator)
        self.text2Text = text2Text
        self.imageView7Path = imageView7Path
    }

    override func getMe() -> Group2Model {
        return self
    }
}
