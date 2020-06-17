//
//  SymbolModifer.swift
//  HoneyMoon UI
//
//  Created by José Javier Cueto Mejía on 17/06/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .foregroundColor(Color.white)
      .font(.system(size: 128))
      .shadow(color: Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: 12, x: 0, y: 0)
  }
}
