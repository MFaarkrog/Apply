//
//  Created by Morten Faarkrog
//

import UIKit

@available(iOS 9.0, *)
public extension UIStackView {
  
  @discardableResult func apply<T: UIStackView>(alignment: UIStackView.Alignment) -> T {
    self.alignment = alignment
    return self as! T
  }
  
  @discardableResult func apply<T: UIStackView>(arrangedSubviews subviews: [UIView]) -> T {
    subviews.forEach { self.addArrangedSubview($0) }
    return self as! T
  }
  
  @discardableResult func apply<T: UIStackView>(arrangedSubview subview: UIView) -> T {
    self.addArrangedSubview(subview)
    return self as! T
  }
  
  @discardableResult func apply<T: UIStackView>(axis: NSLayoutConstraint.Axis) -> T {
    self.axis = axis
    return self as! T
  }
  
  @discardableResult func apply<T: UIStackView>(distribution: UIStackView.Distribution) -> T {
    self.distribution = distribution
    return self as! T
  }
  
  @discardableResult func apply<T: UIStackView>(isLayoutMarginsRelativeArrangement: Bool) -> T {
    self.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
    return self as! T
  }
  
  @discardableResult func apply<T: UIStackView>(spacing: CGFloat) -> T {
    self.spacing = spacing
    return self as! T
  }
  
  @available(iOS 11.0, *)
  @discardableResult func apply<T: UIStackView>(customSpacing: CGFloat, after view: UIView) -> T {
    self.setCustomSpacing(customSpacing, after: view)
    return self as! T
  }
  
}
