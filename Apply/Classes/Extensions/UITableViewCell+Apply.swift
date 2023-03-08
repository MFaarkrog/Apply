//
//  Created by Morten Faarkrog
//

import UIKit

public extension UITableViewCell {

  @discardableResult func apply<T: UITableViewCell>(detailText: String?) -> T {
    self.detailTextLabel?.text = detailText
    return self as! T
  }
  
  @available(iOS 9.0, *)
  @discardableResult func apply<T: UITableViewCell>(focusStyle: UITableViewCell.FocusStyle) -> T {
    self.focusStyle = focusStyle
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(indentationLevel: Int) -> T {
    self.indentationLevel = indentationLevel
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(indentationWidth: CGFloat) -> T {
    self.indentationWidth = indentationWidth
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(isEditing: Bool) -> T {
    self.isEditing = isEditing
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(isHighlighted: Bool) -> T {
    self.isHighlighted = isHighlighted
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(selectionStyle: UITableViewCell.SelectionStyle) -> T {
    self.selectionStyle = selectionStyle
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(separatorInset: UIEdgeInsets) -> T {
    self.separatorInset = separatorInset
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(showsReorderControl: Bool) -> T {
    self.showsReorderControl = showsReorderControl
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(shouldIndentWhileEditing: Bool) -> T {
    self.shouldIndentWhileEditing = shouldIndentWhileEditing
    return self as! T
  }
  
  @discardableResult func apply<T: UITableViewCell>(text: String?) -> T {
    self.textLabel?.text = text
    return self as! T
  }
  
  @available(iOS 11.0, *)
  @discardableResult func apply<T: UITableViewCell>(userInteractionEnabledWhileDragging: Bool) -> T {
    self.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging
    return self as! T
  }
  
}
