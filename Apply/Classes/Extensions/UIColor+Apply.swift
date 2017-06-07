//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIColor {
  
  @discardableResult public func apply(alpha: CGFloat) -> UIColor {
    return self.withAlphaComponent(alpha)
  }
  
}
