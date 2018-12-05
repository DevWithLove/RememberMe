//
//  RoundBoderTextField.swift
//  RememberMe
//
//  Created by Tony Mu on 4/12/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

class RoundedCornersTextField: UITextField {
  
  private let cornerRadius: CGFloat = 5
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  private func setupView() {
    self.layer.cornerRadius = cornerRadius
    self.layer.borderWidth = 0
    self.backgroundColor = AppColor.white_02.color
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x+20, y: bounds.origin.y, width: bounds.width - 20, height: bounds.height)
  }
  
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x+20, y: bounds.origin.y, width: bounds.width - 20, height: bounds.height)
  }
  
}
