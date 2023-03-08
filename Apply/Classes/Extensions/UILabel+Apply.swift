//
//  Created by Morten Faarkrog
//

import UIKit

public extension UILabel {
  
  @discardableResult func apply<T: UILabel>(adjustsFontSizeToFitWidth: Bool) -> T {
    self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(attributedText: NSAttributedString?) -> T {
    self.attributedText = attributedText
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(text: String?) -> T {
    self.text = text
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(textColor: UIColor) -> T {
    self.textColor = textColor
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(textAlignment: NSTextAlignment) -> T {
    self.textAlignment = textAlignment
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(font: UIFont?) -> T {
    self.font = font
    return self as! T
  }

  @discardableResult func apply<T: UILabel>(lineBreakMode: NSLineBreakMode) -> T {
    self.lineBreakMode = lineBreakMode
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(minimumScaleFactor: CGFloat) -> T {
    self.minimumScaleFactor = minimumScaleFactor
    return self as! T
  }
  
  @discardableResult func apply<T: UILabel>(numberOfLines: Int) -> T {
    self.numberOfLines = numberOfLines
    return self as! T
  }
  
}


public extension UILabel {
  
  @discardableResult func apply<T: UILabel>(text: String, withLineSpacing lineSpacing: CGFloat) -> T {
    self.apply(text: text)
    self.setLineSpacing(lineSpacing)
    
    return self as! T
  }
  
  func setLineSpacing(_ lineSpacing: CGFloat) {
    guard let text = self.text else { return }
    
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = lineSpacing
    
    let attributedString: NSMutableAttributedString
    if let labelAttributedText = self.attributedText {
      attributedString = NSMutableAttributedString(attributedString: labelAttributedText)
    } else {
      attributedString = NSMutableAttributedString(string: text)
    }
    
    // Line spacing attribute
    attributedString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                  value: paragraphStyle,
                                  range: NSMakeRange(0, attributedString.length))
    
    self.attributedText = attributedString
  }
}
