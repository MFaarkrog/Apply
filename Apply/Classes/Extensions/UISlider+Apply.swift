//
//  Created by Morten Faarkrog
//

import UIKit

extension UISlider {
  
  @discardableResult public func apply<T: UISlider>(value: Float) -> T {
    self.value = value
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(isContinuous: Bool) -> T {
    self.isContinuous = isContinuous
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(maximumTrackImage: UIImage?, for state: UIControlState) -> T {
    self.setMaximumTrackImage(maximumTrackImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(maximumTrackTintColor: UIColor?) -> T {
    self.maximumTrackTintColor = maximumTrackTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(maximumValue: Float) -> T {
    self.maximumValue = maximumValue
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(maximumValueImage: UIImage?) -> T {
    self.maximumValueImage = maximumValueImage
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(minimumTrackImage: UIImage?, for state: UIControlState) -> T {
    self.setMinimumTrackImage(minimumTrackImage, for: state)
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(minimumTrackTintColor: UIColor?) -> T {
    self.minimumTrackTintColor = minimumTrackTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(minimumValue: Float) -> T {
    self.minimumValue = minimumValue
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(minimumValueImage: UIImage?) -> T {
    self.minimumValueImage = minimumValueImage
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(thumbTintColor: UIColor) -> T {
    self.thumbTintColor = thumbTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UISlider>(thumbImage: UIImage, for state: UIControlState) -> T {
    self.setThumbImage(thumbImage, for: state)
    return self as! T
  }
  
}
