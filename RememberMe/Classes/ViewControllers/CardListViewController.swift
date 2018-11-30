//
//  CardListViewController.swift
//  RememberMe
//
//  Created by Tony Mu on 30/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit

class CardListViewController: UIViewController {
  
  lazy var tableView: UITableView = {
    let view = UITableView(frame: .zero)
    view.dataSource = self
    view.delegate = self
    view.backgroundColor = UIColor.red
    return view
  }()
  
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
    view.addSubview(tableView)
    addViewConstraints()
  }
  
  private func addViewConstraints() {
    _ = tableView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
  }
  
}

extension CardListViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
    return cell
  }
}
