//
//  ButtonModifier.swift
//  HoneyMoon UI
//
//  Created by José Javier Cueto Mejía on 16/06/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//
import SwiftUI

struct ButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.headline)
      .padding()
      .frame(minWidth: 0, maxWidth: .infinity)
      .background(Capsule().fill(Color.pink))
      .foregroundColor(Color.white)
  }
}
