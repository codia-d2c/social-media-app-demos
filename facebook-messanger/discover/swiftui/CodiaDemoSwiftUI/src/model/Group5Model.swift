//
//  Group5Model.swift
//
//  Created by codia-figma
//

import SwiftUI

class Group5Model: LayerCellCreatorModel<Group5Model> {
    var text10Text: String = ""
    var imageView15Path: String = ""
    var text11Text: String = ""
    var text12Text: String = ""
    var imageView16Path: String = ""
    var text13Text: String = ""
    var text14Text: String = ""
    var imageView17Path: String = ""
    var text15Text: String = ""
    var text16Text: String = ""
    var imageView18Path: String = ""
    var text17Text: String = ""
    var text18Text: String = ""
    var imageView14Path: String = ""
    var text9Text: String = ""
    var text19Text: String = ""
    var line1Path: String = ""
    var tab1Path: String = ""
    var imageView20Path: String = ""
    var imageView21Path: String = ""
    var text20Text: String = ""
    var tab2Path: String = ""

    init(cellCreator: @escaping ((Group5Model) -> AnyView),
         text10Text: String,
         imageView15Path: String,
         text11Text: String,
         text12Text: String,
         imageView16Path: String,
         text13Text: String,
         text14Text: String,
         imageView17Path: String,
         text15Text: String,
         text16Text: String,
         imageView18Path: String,
         text17Text: String,
         text18Text: String,
         imageView14Path: String,
         text9Text: String,
         text19Text: String,
         line1Path: String,
         tab1Path: String,
         imageView20Path: String,
         imageView21Path: String,
         text20Text: String,
         tab2Path: String) {
        super.init(cellCreator: cellCreator)
        self.text10Text = text10Text
        self.imageView15Path = imageView15Path
        self.text11Text = text11Text
        self.text12Text = text12Text
        self.imageView16Path = imageView16Path
        self.text13Text = text13Text
        self.text14Text = text14Text
        self.imageView17Path = imageView17Path
        self.text15Text = text15Text
        self.text16Text = text16Text
        self.imageView18Path = imageView18Path
        self.text17Text = text17Text
        self.text18Text = text18Text
        self.imageView14Path = imageView14Path
        self.text9Text = text9Text
        self.text19Text = text19Text
        self.line1Path = line1Path
        self.tab1Path = tab1Path
        self.imageView20Path = imageView20Path
        self.imageView21Path = imageView21Path
        self.text20Text = text20Text
        self.tab2Path = tab2Path
    }

    override func getMe() -> Group5Model {
        return self
    }
}
