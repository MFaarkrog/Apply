//
//  Created by Morten Faarkrog
//

import UIKit

extension UIStepper {
  
  @discardableResult public func apply<T: UIStepper>(backgroundImage: UIImage?,  for state: UIControlState) -> T {
    self.setBackgroundImage(backgroundImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStepper>(decrementImage: UIImage?,  for state: UIControlState) -> T {
    self.setDecrementImage(decrementImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStepper>(incrementImage: UIImage?,  for state: UIControlState) -> T {
    self.setIncrementImage(incrementImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UIStepper>(value: Double) -> T {
    self.value = value
    return self as! T
  }
  
}
