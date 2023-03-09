//
//  Created by Morten Faarkrog
//

import UIKit

public extension UINavigationBar {
  
  @discardableResult func apply<T: UINavigationBar>(backIndicatorImage: UIImage?) -> T {
    self.backIndicatorImage = backIndicatorImage
    return self as! T
  }
  
  @discardableResult func apply<T: UINavigationBar>(barStyle: UIBarStyle) -> T {
    self.barStyle = barStyle
    return self as! T
  }
  
  @discardableResult func apply<T: UINavigationBar>(delegate: UINavigationBarDelegate?) -> T {
    self.delegate = delegate
    return self as! T
  }
  
  @discardableResult func apply<T: UINavigationBar>(barTintColor: UIColor?) -> T {
    self.barTintColor = barTintColor
    return self as! T
  }
  
  @discardableResult func apply<T: UINavigationBar>(shadowImage: UIImage?) -> T {
    self.shadowImage = shadowImage
    return self as! T
  }
  
  @discardableResult func apply<T: UINavigationBar>(isTranslucent: Bool) -> T {
    self.isTranslucent = isTranslucent
    return self as! T
  }
  
  @discardableResult func apply<T: UINavigationBar>(titleTextAttributes: [NSAttributedString.Key : Any]?) -> T {
    self.titleTextAttributes = titleTextAttributes
    return self as! T
  }
  
}
