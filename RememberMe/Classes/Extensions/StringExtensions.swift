//
//  StringExtensions.swift
//  RememberMe
//
//  Created by Tony Mu on 19/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

extension String {
  
  func substring(_ from: Int) -> String {
    return self[from..<self.count]
//    let index = self.index(self.startIndex, offsetBy: from)
//    return String(self[index...])
    //return self.substring(from: self.index(self.startIndex, offsetBy: from))
  }
  
  subscript(_ range: CountableRange<Int>) -> String {
    let idx1 = index(startIndex, offsetBy: max(0, range.lowerBound))
    let idx2 = index(startIndex, offsetBy: min(self.count, range.upperBound))
    return String(self[idx1..<idx2])
  }
}
