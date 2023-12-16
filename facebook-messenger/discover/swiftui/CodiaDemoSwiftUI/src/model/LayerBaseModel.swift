//
//  LayerBaseModel.swift
//
//  Created by codia-figma
//

import SwiftUI

class LayerBaseModel: Identifiable {
    let id = UUID()

    func createCell() -> AnyView {
      fatalError("Must be overridden in subclass")
    }
}

class LayerCellCreatorModel<T>: LayerBaseModel {
  var cellCreator: ((T) -> AnyView)

  init(cellCreator: @escaping ((T) -> AnyView)) {
      self.cellCreator = cellCreator
  }

  override func createCell() -> AnyView {
      return cellCreator(getMe())
  }

  func getMe() -> T {
      fatalError("Must be overridden in subclass")
  }
}
