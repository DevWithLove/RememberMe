//
//  Card.swift
//  RememberMe
//
//  Created by Tony Mu on 30/11/18.
//  Copyright © 2018 DevWithLove.com. All rights reserved.
//

import UIKit
import RealmSwift

class Card: Object {

  // realm not allow to overide constructor
  // Bad to set default value for key property
  @objc dynamic var title: String = ""
  @objc dynamic var subTitle: String?
  @objc dynamic var image: Data?
  @objc dynamic var viewCount: Int = 0
  @objc dynamic var correctCount: Int = 0

  private static var keyProperty: String {
    return #keyPath(title)
  }
  
  override static func primaryKey() -> String? {
    return keyProperty
  }
  
  override static func indexedProperties() -> [String] {
    return [keyProperty]
  }
}

