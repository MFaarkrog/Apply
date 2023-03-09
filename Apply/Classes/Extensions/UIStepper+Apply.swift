//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIStepper {
  
  @discardableResult func apply<T: UIStepper>(backgroundImage: UIImage?,  for state: UIControl.State) -> T {
    self.setBackgroundImage(backgroundImage, for: state)
    return self as! T
  }
  
  @discardableResult func apply<T: UIStepper>(decrementImage: UIImage?,  for state: UIControl.State) -> T {
    self.setDecrementImage(decrementImage, for: state)
    return self as! T
  }
  
  @discardableResult func apply<T: UIStepper>(incrementImage: UIImage?,  for state: UIControl.State) -> T {
    self.setIncrementImage(incrementImage, for: state)
    return self as! T
  }
  
  @discardableResult func apply<T: UIStepper>(value: Double) -> T {
    self.value = value
    return self as! T
  }
  
}
