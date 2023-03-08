//
//  UIBarButtonItem+Apply.swift
//  Pods
//
//  Created by Morten Faarkrog on 7/17/17.
//
//

import UIKit

public extension UIBarButtonItem {
  
  @discardableResult func apply<T: UIBarButtonItem>(action: Selector?) -> T {
    self.action = action
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(style: UIBarButtonItem.Style) -> T {
    self.style = style
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(possibleTitles: Set<String>?) -> T {
    self.possibleTitles = possibleTitles
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(width: CGFloat) -> T {
    self.width = width
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(customView: UIView?) -> T {
    self.customView = customView
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(tintColor: UIColor?) -> T {
    self.tintColor = tintColor
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(title: String) -> T {
    self.title = title
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(backButtonBackgroundImage: UIImage, for controlState: UIControl.State, barMetric: UIBarMetrics) -> T {
    self.setBackButtonBackgroundImage(backButtonBackgroundImage, for: controlState, barMetrics: barMetric)
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(backButtonTitlePositionAdjustment adjustment: UIOffset, for barMetric: UIBarMetrics) -> T {
    self.setBackButtonTitlePositionAdjustment(adjustment, for: barMetric)
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(backButtonBackgroundVerticalPositionAdjustment adjustment: CGFloat, for barMetric: UIBarMetrics) -> T {
    self.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetric)
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(backgroundImage: UIImage?, for controlState: UIControl.State, barMetric: UIBarMetrics, style: UIBarButtonItem.Style) -> T {
    self.setBackgroundImage(backgroundImage, for: controlState, style: style, barMetrics: barMetric)
    return self as! T
  }
  
  @discardableResult func apply<T: UIBarButtonItem>(titlePositionAdjustment adjustment: UIOffset, for barMetric: UIBarMetrics) -> T {
    self.setTitlePositionAdjustment(adjustment, for: barMetric)
    return self as! T
  }
  
}
