//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIView {
  
  // MARK: - Helper

  
  /// Force cast a type into another. Useful when the type is lost during chains.
  ///
  /// Example: `UIButton().apply(title: "Text").as(UIView.self)`
  func `as`<T: UIView>(_ type: T.Type) -> T {
    return self as! T
  }
  
  // MARK: - Apply
  @discardableResult func apply<T>(style: UIViewStyle<T>) -> T {
    style.apply(to: self as! T)
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(addSubview subview: UIView) -> T {
    self.addSubview(subview)
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(alpha: CGFloat) -> T {
    self.alpha = alpha
    return self as! T
  }

  @discardableResult func apply<T: UIView>(backgroundColor: UIColor) -> T {
    self.backgroundColor = backgroundColor
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(borderColor: UIColor) -> T {
    self.layer.borderColor = borderColor.cgColor
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(borderWidth: CGFloat) -> T {
    self.layer.borderWidth = borderWidth
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(borderColor: UIColor, borderWidth: CGFloat) -> T {
    self.layer.borderColor = borderColor.cgColor
    self.layer.borderWidth = borderWidth
    return self as! T
  }

  @discardableResult func apply<T: UIView>(contentMode: UIView.ContentMode) -> T {
    self.contentMode = contentMode
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(clipsToBounds: Bool) -> T {
    self.clipsToBounds = clipsToBounds
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(cornerRadius: CGFloat) -> T {
    self.layer.cornerRadius = cornerRadius
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(frame: CGRect) -> T {
    self.frame = frame
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(isHidden: Bool) -> T {
    self.isHidden = isHidden
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(isUserInteractionEnabled: Bool) -> T {
    self.isUserInteractionEnabled = isUserInteractionEnabled
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(layoutMargins: UIEdgeInsets) -> T {
    self.layoutMargins = layoutMargins
    return self as! T
  }

  @discardableResult func apply<T: UIView>(origin: CGPoint) -> T {
    self.frame.origin = origin
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(shadowRadius: CGFloat, shadowOpacity: Float, shadowColor: UIColor, shadowOffset: CGSize) -> T {
    self.layer.shadowColor   = shadowColor.cgColor
    self.layer.shadowRadius  = shadowRadius
    self.layer.shadowOpacity = shadowOpacity
    self.layer.shadowOffset  = shadowOffset
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(size: CGSize) -> T {
    self.frame.size = size
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(tintColor: UIColor) -> T {
    self.tintColor = tintColor
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(transform: CGAffineTransform) -> T {
    self.transform = transform
    return self as! T
  }
  
  @discardableResult func apply<T: UIView>(translatesAutoresizingMaskIntoConstraints: Bool) -> T {
    self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
    return self as! T
  }
  
}


public extension UIView {
  
  @discardableResult func apply<T: UIView>(blurEffectViewWithStyle style: UIBlurEffect.Style, alpha: CGFloat = 1) -> T {
    self.addBlur(withStyle: style, alpha: alpha)
    return self as! T
  }
  
  func addBlur(withStyle style: UIBlurEffect.Style = UIBlurEffect.Style.dark, alpha: CGFloat = 1.0) {
    let alphaView = UIView(frame: self.bounds)
    alphaView.alpha = alpha
    
    // Blur View
    let blurEffect = UIBlurEffect(style: style)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    blurEffectView.frame = alphaView.bounds
    blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
    
    // Add views
    alphaView.addSubview(blurEffectView)
    self.addSubview(alphaView)
  }
}
