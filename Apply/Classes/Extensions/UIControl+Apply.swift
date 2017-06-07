//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIControl {
  
  @discardableResult public func apply<T: UIControl>(isEnabled: Bool) -> T {
    self.isEnabled = isEnabled
    return self as! T
  }
  
}
