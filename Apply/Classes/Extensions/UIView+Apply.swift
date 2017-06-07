//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIView {
  
  // MARK: - Helper

  
  /// Force cast a type into another. Useful when the type is lost during chains.
  ///
  /// Example: `UIButton().apply(title: "Text").as(UIView.self)`
  public func `as`<T: UIView>(_ type: T.Type) -> T {
    return self as! T
  }
  
  // MARK: - Apply
  @discardableResult public func apply<T: UIView>(style: UIViewStyle<T>) -> T {
    style.apply(to: self as! T)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(alpha: CGFloat) -> T {
    self.alpha = alpha
    return self as! T
  }

  @discardableResult public func apply<T: UIView>(backgroundColor: UIColor) -> T {
    self.backgroundColor = backgroundColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(borderColor: UIColor) -> T {
    self.layer.borderColor = borderColor.cgColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(borderWidth: CGFloat) -> T {
    self.layer.borderWidth = borderWidth
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(borderColor: UIColor, borderWidth: CGFloat) -> T {
    self.layer.borderColor = borderColor.cgColor
    self.layer.borderWidth = borderWidth
    return self as! T
  }

  @discardableResult public func apply<T: UIView>(contentMode: UIViewContentMode) -> T {
    self.contentMode = contentMode
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(clipsToBounds: Bool) -> T {
    self.clipsToBounds = clipsToBounds
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(cornerRadius: CGFloat) -> T {
    self.layer.cornerRadius = cornerRadius
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(frame: CGRect) -> T {
    self.frame = frame
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(isHidden: Bool) -> T {
    self.isHidden = isHidden
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(isUserInteractionEnabled: Bool) -> T {
    self.isUserInteractionEnabled = isUserInteractionEnabled
    return self as! T
  }

  @discardableResult public func apply<T: UIView>(origin: CGPoint) -> T {
    self.frame.origin = origin
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(shadowRadius: CGFloat, shadowOpacity: Float, shadowColor: UIColor, shadowOffset: CGSize) -> T {
    self.layer.shadowColor   = shadowColor.cgColor
    self.layer.shadowRadius  = shadowRadius
    self.layer.shadowOpacity = shadowOpacity
    self.layer.shadowOffset  = shadowOffset
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(size: CGSize) -> T {
    self.frame.size = size
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(tintColor: UIColor) -> T {
    self.tintColor = tintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(translatesAutoresizingMaskIntoConstraints: Bool) -> T {
    self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
    return self as! T
  }
  
}
