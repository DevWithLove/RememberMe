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
    return self.substring(from: self.index(self.startIndex, offsetBy: from))
  }
  
}
