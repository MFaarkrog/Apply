//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIButton {
  
  @discardableResult public func apply<T: UIButton>(attributedString: NSAttributedString?, forState state: UIControlState = .normal) -> T {
    self.setAttributedTitle(attributedString, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(backgroundImage: UIImage?, forState state: UIControlState) -> T {
    self.setBackgroundImage(backgroundImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(contentEdgeInsets: UIEdgeInsets) -> T {
    self.contentEdgeInsets = contentEdgeInsets
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(contentHorizontalAlignment: UIControlContentHorizontalAlignment) -> T {
    self.contentHorizontalAlignment = contentHorizontalAlignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(contentVerticalAlignment: UIControlContentVerticalAlignment) -> T {
    self.contentVerticalAlignment = contentVerticalAlignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(image: UIImage?, forState state: UIControlState = .normal) -> T {
    self.setImage(image, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(title: String, forState state: UIControlState = .normal) -> T {
    self.setTitle(title, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(titleEdgeInsets: UIEdgeInsets) -> T {
    self.titleEdgeInsets = titleEdgeInsets
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(imageEdgeInsets: UIEdgeInsets) -> T {
    self.imageEdgeInsets = imageEdgeInsets
    return self as! T
  }
  
  @discardableResult public func apply<T: UIView>(styleToTitleLabel style: UIViewStyle<UILabel>) -> T {
    guard let titleLabel = self.titleLabel else { return self as! T }
    style.apply(to: titleLabel)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(titleColor: UIColor, forState state: UIControlState = .normal) -> T {
    self.setTitleColor(titleColor, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(titleColor: UIColor, forStates states: [UIControlState]) -> T {
    for state in states {
      self.setTitleColor(titleColor, for: state)
    }
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(titleFont: UIFont?) -> T {
    self.titleLabel?.font = titleFont
    return self as! T
  }
  
}
