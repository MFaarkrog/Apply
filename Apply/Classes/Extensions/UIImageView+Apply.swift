//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIImageView {

  @discardableResult public func apply<T: UIImageView>(image: UIImage?) -> T {
    self.image = image
    return self as! T
  }
  
}
