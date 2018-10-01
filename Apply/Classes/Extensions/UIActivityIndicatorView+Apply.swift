//
//  Created by Morten Faarkrog
//

import UIKit

extension UIActivityIndicatorView {
	
  @discardableResult public func apply<T: UIActivityIndicatorView>(activityIndicatorViewStyle: UIActivityIndicatorView.Style) -> T {
    self.style = activityIndicatorViewStyle
    return self as! T
  }
  
  @discardableResult public func apply<T: UIActivityIndicatorView>(color: UIColor?) -> T {
    self.color = color
    return self as! T
  }
  
  @discardableResult public func apply<T: UIActivityIndicatorView>(hidesWhenStopped: Bool) -> T {
    self.hidesWhenStopped = hidesWhenStopped
    return self as! T
  }
  
}
