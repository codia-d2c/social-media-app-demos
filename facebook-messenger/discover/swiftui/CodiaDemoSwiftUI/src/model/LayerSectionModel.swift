//
//  LayerSectionModel.swift
//
//  Created by codia-figma
//

import SwiftUI

class LayerSectionModel: Identifiable {
    let id = UUID()
    var cellModels = [LayerBaseModel]()
    var headerCreator: ((LayerSectionModel) -> AnyView)
    var footerCreator: ((LayerSectionModel) -> AnyView)

    init(headerCreator: @escaping ((LayerSectionModel) -> AnyView),
         footerCreator: @escaping ((LayerSectionModel) -> AnyView),
         cellModels: [LayerBaseModel]) {
        self.cellModels = cellModels
        self.headerCreator = headerCreator
        self.footerCreator = footerCreator
    }

    func createHeader() -> AnyView {
        return headerCreator(self)
    }

    func createFooter() -> AnyView {
        return footerCreator(self)
    }
}
