//
//  AddCardViewController.swift
//  RememberMe
//
//  Created by Tony Mu on 4/12/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

class AddCardViewController: UIViewController {
  
  private static let cornerRadius: CGFloat = 15
  private static let backgroundViewHight: CGFloat = 400
  
  let backgroundView: UIView = {
    let view = UIView(frame: .zero)
    view.backgroundColor = AppColor.white.color
    view.RoundFrame(cornerRadius: AddCardViewController.cornerRadius )
    return view
  }()
  
  let titleLabel: UILabel = {
    let label = UILabel(frame: .zero)
    return label
  }()
  
  let subtitleLabel: UILabel = {
    let label = UILabel(frame: .zero)
    return label
  }()
  
  let titleTextField: RoundedCornersTextField = {
    let textView = RoundedCornersTextField(frame: .zero)
    textView.placeholder = "Title"
    textView.font = UIFont.TitilliumWeb.semiBold
    return textView
  }()
  
  let subtitleTextField: RoundedCornersTextField = {
    let textView = RoundedCornersTextField(frame: .zero)
    textView.placeholder = "Subtitle"
    textView.font = UIFont.TitilliumWeb.semiBold
    return textView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }
  
  override func viewDidLayoutSubviews() {
    backgroundView.dropShadow(color: UIColor.gray, offSet: CGSize(width: 1, height: 1), radius: AddCardViewController.cornerRadius)
  }
  
  // MARK: Layout
  
  private func setupViews() {
    hideKeyboardWhenTappedAround()
    UITabBar.appearance().barTintColor = AppColor.white_02.color
    UITabBar.appearance().tintColor = AppColor.red.color
    self.tabBarController!.tabBar.layer.borderWidth = 0.50
    self.tabBarController!.tabBar.layer.borderColor = UIColor.clear.cgColor
    self.tabBarController?.tabBar.clipsToBounds = true
    view.backgroundColor = AppColor.white_02.color
    view.addSubview(backgroundView)
    backgroundView.addSubview(titleTextField)
    backgroundView.addSubview(subtitleTextField)
    addViewConstraints()
  }
  
  private func addViewConstraints() {
    let backgroundTopConstant = -AddCardViewController.backgroundViewHight / 2
    _ = backgroundView.anchor(view.centerYAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: backgroundTopConstant, leftConstant: 30, bottomConstant: 0, rightConstant: 30, widthConstant: 0, heightConstant: AddCardViewController.backgroundViewHight)
    
    _ = titleTextField.anchor(backgroundView.topAnchor, left: backgroundView.leftAnchor, bottom: nil, right: backgroundView.rightAnchor, topConstant: 40, leftConstant: 30, bottomConstant: 0, rightConstant: 30, widthConstant: 0, heightConstant: 40)
    
    _ = subtitleTextField.anchor(titleTextField.bottomAnchor, left: backgroundView.leftAnchor, bottom: nil, right: backgroundView.rightAnchor, topConstant: 20, leftConstant: 30, bottomConstant: 0, rightConstant: 30, widthConstant: 0, heightConstant: 40)
  }
}
