//
//  Created by Morten Faarkrog
//

import UIKit

public extension UILabel {
  
  @discardableResult public func apply<T: UILabel>(adjustsFontSizeToFitWidth: Bool) -> T {
    self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(attributedText: NSAttributedString?) -> T {
    self.attributedText = attributedText
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(text: String?) -> T {
    self.text = text
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(textColor: UIColor) -> T {
    self.textColor = textColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(textAlignment: NSTextAlignment) -> T {
    self.textAlignment = textAlignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(font: UIFont?) -> T {
    self.font = font
    return self as! T
  }

  @discardableResult public func apply<T: UILabel>(lineBreakMode: NSLineBreakMode) -> T {
    self.lineBreakMode = lineBreakMode
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(minimumScaleFactor: CGFloat) -> T {
    self.minimumScaleFactor = minimumScaleFactor
    return self as! T
  }
  
  @discardableResult public func apply<T: UILabel>(numberOfLines: Int) -> T {
    self.numberOfLines = numberOfLines
    return self as! T
  }
  
}
