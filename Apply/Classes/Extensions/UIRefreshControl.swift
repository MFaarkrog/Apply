//
//  UIRefreshControl.swift
//  Listify
//
//  Created by Morten Faarkrog on 3/14/17.
//  Copyright © 2017 Adapt Mobile. All rights reserved.
//

import UIKit

public extension UIRefreshControl {
  
  @discardableResult func apply<T: UIRefreshControl>(attributedTitle: NSAttributedString?) -> T {
    self.attributedTitle = attributedTitle
    return self as! T
  }

}
