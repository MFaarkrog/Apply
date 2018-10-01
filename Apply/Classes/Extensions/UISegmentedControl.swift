//
//  Created by Morten Faarkrog
//

import UIKit

extension UISegmentedControl {

  @discardableResult public func apply<T: UISegmentedControl>(isMomentary: Bool) -> T {
    self.isMomentary = isMomentary
    return self as! T
  }
  
  @discardableResult public func apply<T: UISegmentedControl>(titleTextAttributes: [AnyHashable : Any]?, for state: UIControl.State) -> T {
    self.setTitleTextAttributes(titleTextAttributes as? [NSAttributedString.Key : Any], for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UISegmentedControl>(segmentWithImage image: UIImage?, at index: Int) -> T {
    self.insertSegment(with: image, at: index, animated: false)
    return self as! T
  }
  
  @discardableResult public func apply<T: UISegmentedControl>(segmentWithTitle title: String?, at index: Int) -> T {
    self.insertSegment(withTitle: title, at: index, animated: false)
    return self as! T
  }
  
}
