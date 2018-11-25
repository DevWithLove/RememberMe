//
//  SwipeableCard.swift
//  RememberMe
//
//  Created by Tony Mu on 22/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

class SwipeableCardView: UIView {

  /// Shadow View
  private weak var shadowView: UIView?
  
  /// Inner Margin
  private let kInnerMargin: CGFloat =  1.0
  private let cornerRadius: CGFloat = 15.0
  
  static func loadViewFromNib() -> SwipeableCardView {
    let nib = UINib(nibName: "SwipeableCardView", bundle: nil)
    return nib.instantiate(withOwner: self, options: nil)[0] as! SwipeableCardView
  }
  
  override open func awakeFromNib() {
    super.awakeFromNib()
    self.RoundFrame(cornerRadius: cornerRadius)
  }
  
  private func setupView() {
    self.backgroundColor = AppColor.green.color
    configureShadow()
  }
  
  override func layoutSubviews() {
    setupView()
  }
  
  // MARK: - Shadow
  
  private func configureShadow() {
    // Shadow View
    self.shadowView?.removeFromSuperview()
    let shadowView = UIView(frame: CGRect(x: 2,
                                          y: 2,
                                          width: bounds.width,
                                          height: bounds.height))
    self.superview?.insertSubview(shadowView, at: 0)
    self.shadowView = shadowView
    
    // Roll/Pitch Dynamic Shadow
    //        if motionManager.isDeviceMotionAvailable {
    //            motionManager.deviceMotionUpdateInterval = 0.02
    //            motionManager.startDeviceMotionUpdates(to: .main, withHandler: { (motion, error) in
    //                if let motion = motion {
    //                    let pitch = motion.attitude.pitch * 10 // x-axis
    //                    let roll = motion.attitude.roll * 10 // y-axis
    //                    self.applyShadow(width: CGFloat(roll), height: CGFloat(pitch))
    //                }
    //            })
    //        }
    self.applyShadow(width: CGFloat(0.0), height: CGFloat(0.0))
  }
  
  private func applyShadow(width: CGFloat, height: CGFloat) {
    if let shadowView = shadowView {
      let shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: cornerRadius)
      shadowView.layer.masksToBounds = false
      shadowView.layer.shadowRadius = cornerRadius
      shadowView.layer.shadowColor = UIColor.black.cgColor
      shadowView.layer.shadowOffset = CGSize(width: width, height: height)
      shadowView.layer.shadowOpacity = 0.5
      shadowView.layer.shadowPath = shadowPath.cgPath
    }
  }


}
