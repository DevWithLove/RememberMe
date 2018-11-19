//
//  UIColorExtensions.swift
//  RememberMe
//
//  Created by Tony Mu on 19/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

extension UIColor {
  
  convenience public init(r: CGFloat, g: CGFloat, b: CGFloat) {
    self.init(r: r, g: g, b: b, a: 1)
  }
  
  convenience public init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
    self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
  }
  
  convenience init(hex: String) {
    self.init(hex: hex, alpha:1)
  }
  
  convenience init(hex: String, alpha: CGFloat) {
    var hexWithoutSymbol = hex
    if hexWithoutSymbol.hasPrefix("#") {
      hexWithoutSymbol = hex.substring(1)
    }
    
    let scanner = Scanner(string: hexWithoutSymbol)
    var hexInt:UInt32 = 0x0
    scanner.scanHexInt32(&hexInt)
    
    var r:UInt32!, g:UInt32!, b:UInt32!
    switch (hexWithoutSymbol.count) {
    case 3: // #RGB
      r = ((hexInt >> 4) & 0xf0 | (hexInt >> 8) & 0x0f)
      g = ((hexInt >> 0) & 0xf0 | (hexInt >> 4) & 0x0f)
      b = ((hexInt << 4) & 0xf0 | hexInt & 0x0f)
      break;
    case 6: // #RRGGBB
      r = (hexInt >> 16) & 0xff
      g = (hexInt >> 8) & 0xff
      b = hexInt & 0xff
      break;
    default:
      // TODO:ERROR
      break;
    }
    
    self.init(
      red: (CGFloat(r)/255),
      green: (CGFloat(g)/255),
      blue: (CGFloat(b)/255),
      alpha:alpha)
  }
  
}