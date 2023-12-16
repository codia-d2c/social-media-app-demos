//
//  Group3Model.swift
//
//  Created by codia-figma
//

import SwiftUI

class Group3Model: LayerCellCreatorModel<Group3Model> {
    var text4Text: String = ""
    var text3Text: String = ""

    init(cellCreator: @escaping ((Group3Model) -> AnyView),
         text4Text: String,
         text3Text: String) {
        super.init(cellCreator: cellCreator)
        self.text4Text = text4Text
        self.text3Text = text3Text
    }

    override func getMe() -> Group3Model {
        return self
    }
}
