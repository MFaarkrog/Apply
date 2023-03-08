//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIImageView {

  @discardableResult func apply<T: UIImageView>(image: UIImage?) -> T {
    self.image = image
    return self as! T
  }
  
}
