//
//  ViewController.swift
//  RememberMe
//
//  Created by Tony Mu on 18/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController {

  let headerView: UIView = {
    let view = UIView(frame: .zero)
    return view
  }()
  
  let refreshButton: UIButton = {
    let button = UIButton(frame: .zero)
    let btnImage = UIImage(named: "btn_undo")
    let tintedImage = btnImage?.withRenderingMode(.alwaysTemplate)
    button.setImage(tintedImage, for: .normal)
    button.tintColor = UIColor.gray
    return button
  }()
  
  
  
  // MARK: View Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }
  
  
  // MARK: Layout
  
  private func setupViews() {
    self.tabBarController!.tabBar.layer.borderWidth = 0.50
    self.tabBarController!.tabBar.layer.borderColor = UIColor.clear.cgColor
    self.tabBarController?.tabBar.clipsToBounds = true
    
    view.addSubview(headerView)
    headerView.addSubview(refreshButton)
    addViewConstraints()
  }
  
  private func addViewConstraints() {
    _ = headerView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
    _ = refreshButton.anchor(headerView.topAnchor, left: nil, bottom: headerView.bottomAnchor, right: headerView.rightAnchor, topConstant: 5, leftConstant: 0, bottomConstant: 5, rightConstant: 10, widthConstant: 30, heightConstant: 0)
  }

}

