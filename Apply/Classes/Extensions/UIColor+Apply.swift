//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIColor {
  
  @discardableResult func apply(alpha: CGFloat) -> UIColor {
    return self.withAlphaComponent(alpha)
  }
  
}
