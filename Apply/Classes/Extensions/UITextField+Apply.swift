//
//  Created by Morten Faarkrog
//

import UIKit

public extension UITextField {
  
  @discardableResult func apply<T: UITextField>(adjustsFontSizeToFitWidth: Bool) -> T {
    self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(allowsEditingTextAttributes: Bool) -> T {
    self.allowsEditingTextAttributes = allowsEditingTextAttributes
    return self as! T
  }
   @discardableResult func apply<T: UITextField>(attributedPlaceholder: NSAttributedString?) -> T {
    self.attributedPlaceholder = attributedPlaceholder
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(attributedText: NSAttributedString?) -> T {
    self.attributedText = attributedText
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(autocapitalizationType: UITextAutocapitalizationType) -> T {
    self.autocapitalizationType = autocapitalizationType
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(autocorrectionType: UITextAutocorrectionType) -> T {
    self.autocorrectionType = autocorrectionType
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(backgroundImage: UIImage?) -> T {
    self.background = backgroundImage
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(borderStyle: UITextField.BorderStyle) -> T {
    self.borderStyle = borderStyle
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(clearButtonMode: UITextField.ViewMode) -> T {
    self.clearButtonMode = clearButtonMode
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(clearsOnBeginEditing: Bool) -> T {
    self.clearsOnBeginEditing = clearsOnBeginEditing
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(clearsOnInsertion: Bool) -> T {
    self.clearsOnInsertion = clearsOnInsertion
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(delegate: UITextFieldDelegate?) -> T {
    self.delegate = delegate
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(enablesReturnKeyAutomatically: Bool) -> T {
    self.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(inputView: UIView?) -> T {
    self.inputView = inputView
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(inputAccessoryView: UIView?) -> T {
    self.inputAccessoryView = inputAccessoryView
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(isSecureTextEntry: Bool) -> T {
    self.isSecureTextEntry = isSecureTextEntry
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(keyboardType: UIKeyboardType) -> T {
    self.keyboardType = keyboardType
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(leftView: UIView?) -> T {
    self.leftView = leftView
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(leftViewMode: UITextField.ViewMode) -> T {
    self.leftViewMode = leftViewMode
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(returnKeyType: UIReturnKeyType) -> T {
    self.returnKeyType = returnKeyType
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(rightView: UIView?) -> T {
    self.rightView = rightView
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(rightViewMode: UITextField.ViewMode) -> T {
    self.rightViewMode = rightViewMode
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(minimumFontSize: CGFloat) -> T {
    self.minimumFontSize = minimumFontSize
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(placeholder: String?) -> T {
    self.placeholder = placeholder
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(placeholder: String, placeholderColor color: UIColor, placeholderFont font: UIFont) -> T {
    self.attributedPlaceholder = NSAttributedString(
        string: placeholder,
        attributes: [.foregroundColor: color,
                     .font: font])
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(font: UIFont) -> T {
    self.font = font
    return self as! T
  }

  @discardableResult func apply<T: UITextField>(spellCheckingType: UITextSpellCheckingType) -> T {
    self.spellCheckingType = spellCheckingType
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(text: String?) -> T {
    self.text = text
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(textAlignment: NSTextAlignment) -> T {
    self.textAlignment = textAlignment
    return self as! T
  }
  
  @discardableResult func apply<T: UITextField>(textColor: UIColor) -> T {
    self.textColor = textColor
    return self as! T
  }
  
}


public extension UITextView {
  
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


private extension String {
  
  func htmlAttributedString() -> NSAttributedString? {
    guard let data = self.data(using: String.Encoding.utf16, allowLossyConversion: false) else { return nil }
    guard let html = try? NSMutableAttributedString(
      data: data,
      options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html],
      documentAttributes: nil) else { return nil }
    return html
  }
}


public extension UITextView {
  
  @discardableResult func apply<T: UITextView>(textAsHTML html: String) -> T {
    let font = self.font
    let textColor = self.textColor
    self.attributedText = html.htmlAttributedString()
    self.font = font
    self.textColor = textColor
    return self as! T
  }
}
