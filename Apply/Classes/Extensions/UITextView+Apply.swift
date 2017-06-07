//
//  Created by Morten Faarkrog
//

import UIKit

public extension UITextView {
 
  @discardableResult public func apply<T: UITextView>(attributedText: NSAttributedString) -> T {
    self.attributedText = attributedText
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(clearsOnInsertion: Bool) -> T {
    self.clearsOnInsertion = clearsOnInsertion
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(font: UIFont?) -> T {
    self.font = font
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(isEditable: Bool) -> T {
    self.isEditable = isEditable
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(isSelectable: Bool) -> T {
    self.isSelectable = isSelectable
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(inputView: UIView?) -> T {
    self.inputView = inputView
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(inputAccessoryView: UIView?) -> T {
    self.inputAccessoryView = inputAccessoryView
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(text: String?) -> T {
    self.text = text
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(textAlignment: NSTextAlignment) -> T {
    self.textAlignment = textAlignment
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(textColor: UIColor?) -> T {
    self.textColor = textColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UITextView>(textContainerInset: UIEdgeInsets) -> T {
    self.textContainerInset = textContainerInset
    return self as! T
  }
  
}
