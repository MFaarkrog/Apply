//
//  File.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/14/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

public extension UIView {
  func addSubviews(_ views: [UIView]) {
    views.forEach { self.addSubview($0) }
  }
}
