//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIButton {
  
  @discardableResult public func apply<T: UIButton>(attributedString: NSAttributedString?, forState state: UIControl.State = .normal) -> T {
    self.setAttributedTitle(attributedString, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(backgroundImage: UIImage?, forState state: UIControl.State) -> T {
    self.setBackgroundImage(backgroundImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(contentEdgeInsets: UIEdgeInsets) -> T {
    self.contentEdgeInsets = contentEdgeInsets
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> T {
    self.contentHorizontalAlignment = contentHorizontalAlignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> T {
    self.contentVerticalAlignment = contentVerticalAlignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(image: UIImage?, forState state: UIControl.State = .normal) -> T {
    self.setImage(image, for: state)
    return self as! T
  }
  
  @available(iOS 9.0, *)
  @discardableResult public func apply<T: UIButton>(semanticContentAttribute: UISemanticContentAttribute) -> T {
    self.semanticContentAttribute = semanticContentAttribute
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(title: String, forState state: UIControl.State = .normal) -> T {
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
  
  @discardableResult public func apply<T: UIButton>(titleColor: UIColor, forState state: UIControl.State = .normal) -> T {
    self.setTitleColor(titleColor, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIButton>(titleColor: UIColor, forStates states: [UIControl.State]) -> T {
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
