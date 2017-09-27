//
//  Created by Morten Faarkrog
//

import UIKit

@available(iOS 9.0, *)
extension UIStackView {
  
  @discardableResult public func apply<T: UIStackView>(alignment: UIStackViewAlignment) -> T {
    self.alignment = alignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStackView>(arrangedSubviews subviews: [UIView]) -> T {
    subviews.forEach { self.addArrangedSubview($0) }
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStackView>(arrangedSubview subview: UIView) -> T {
    self.addArrangedSubview(subview)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStackView>(axis: UILayoutConstraintAxis) -> T {
    self.axis = axis
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStackView>(distribution: UIStackViewDistribution) -> T {
    self.distribution = distribution
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStackView>(spacing: CGFloat) -> T {
    self.spacing = spacing
    return self as! T
  }
  
}
