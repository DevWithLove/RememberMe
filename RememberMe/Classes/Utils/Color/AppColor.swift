//
//  AppColor.swift
//  RememberMe
//
//  Created by Tony Mu on 19/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

enum AppColor {
  
  case red
  case red_02
  case white
  case white_02
  case yellow
  case brown
  case gray
  case gray_02
  case green
  case custom(hex:String , alpha:Double)
  
  var color: UIColor {
    switch self {
    case .red:
      return UIColor(hexString: "#F6342F")
    case .red_02:
      return UIColor(hexString: "#D3342A")
    case .white:
      return UIColor.white
    case .white_02:
      return UIColor(hexString: "#F7F5F7")
    case .yellow:
      return UIColor(hexString: "#FBC438")
    case .brown:
      return UIColor(hexString: "#5D4141")
    case .gray:
      return UIColor(hexString: "#F9F7F9")
    case .gray_02:
      return UIColor(hexString: "#DED7CE")
    case .green:
      return UIColor(hexString: "#92D347")
    case .custom(let hex, let opacity):
      return UIColor(hexString: hex).withAlphaComponent(CGFloat(opacity))
    }
  }
  
  var cgColor: CGColor {
    return color.cgColor
  }
  
  func withAlpha(_ alpha:Double) -> UIColor {
    return self.color.withAlphaComponent(CGFloat(alpha))
  }
}
