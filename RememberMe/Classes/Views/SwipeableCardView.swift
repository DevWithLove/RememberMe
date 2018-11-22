//
//  SwipeableCard.swift
//  RememberMe
//
//  Created by Tony Mu on 22/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

class SwipeableCardView: UIView {

  @IBOutlet weak var topView: UIView!
  @IBOutlet weak var bottomView: UIView!
  
  static func View() -> SwipeableCardView {
    let nib = UINib(nibName: "SwipeableCardView", bundle: nil)
    return nib.instantiate(withOwner: self, options: nil)[0] as! SwipeableCardView
  }
  
  override open func awakeFromNib() {
    super.awakeFromNib()
    self.RoundFrame(cornerRadius: 10)
  }

}
