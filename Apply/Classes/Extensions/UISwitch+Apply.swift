//
//  Created by Morten Faarkrog
//

import UIKit

extension UISwitch {
  
  @discardableResult public func apply<T: UISwitch>(isOn: Bool) -> T {
    self.isOn = isOn
    return self as! T
  }
  
  @discardableResult public func apply<T: UISwitch>(onTintColor: UIColor?) -> T {
    self.onTintColor = onTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UISwitch>(thumbTintColor: UIColor?) -> T {
    self.thumbTintColor = thumbTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UISwitch>(onImage: UIImage?) -> T {
    self.onImage = onImage
    return self as! T
  }
  
  @discardableResult public func apply<T: UISwitch>(offImage: UIImage?) -> T {
    self.offImage = offImage
    return self as! T
  }
  
}
