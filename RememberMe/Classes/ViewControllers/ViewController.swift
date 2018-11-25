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
    button.tintColor = AppColor.gray_02.color
    return button
  }()
  
  lazy var kolodaView: KolodaView = { [weak self] in
    let view = KolodaView(frame: .zero)
    view.delegate = self
    view.dataSource = self
    return view
  }()
  
  
  
  // MARK: View Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }
  
  
  // MARK: Layout
  
  private func setupViews() {
    UITabBar.appearance().barTintColor = AppColor.white_02.color
    UITabBar.appearance().tintColor = AppColor.red.color
    self.tabBarController!.tabBar.layer.borderWidth = 0.50
    self.tabBarController!.tabBar.layer.borderColor = UIColor.clear.cgColor
    self.tabBarController?.tabBar.clipsToBounds = true
    view.backgroundColor = AppColor.white_02.color
    view.addSubview(headerView)
    view.addSubview(kolodaView)
    headerView.addSubview(refreshButton)
    addViewConstraints()
  }
  
  private func addViewConstraints() {
    _ = headerView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
    _ = refreshButton.anchor(headerView.topAnchor, left: nil, bottom: headerView.bottomAnchor, right: headerView.rightAnchor, topConstant: 5, leftConstant: 0, bottomConstant: 5, rightConstant: 10, widthConstant: 30, heightConstant: 0)
    _ = kolodaView.anchor(headerView.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 50, leftConstant: 30, bottomConstant: 0, rightConstant: 30, widthConstant: 0, heightConstant: 400)
  }

}

extension ViewController: KolodaViewDelegate {
  func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
    koloda.reloadData()
  }
  
}

extension ViewController: KolodaViewDataSource {
  
  func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
    return .fast
  }
  
  func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
    return SwipeableCardView.loadViewFromNib()
  }
  
  func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
    return nil
    // return Bundle.main.loadNibNamed("OverlayView", owner: self, options: nil)[0] as? OverlayView
  }
  
  func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
    return 5
  }
}

