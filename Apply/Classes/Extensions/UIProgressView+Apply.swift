//
//  Created by Morten Faarkrog
//

import UIKit

extension UIProgressView {

  @discardableResult public func apply<T: UIProgressView>(progress: Float) -> T {
    self.progress = progress
    return self as! T
  }
  
  @discardableResult public func apply<T: UIProgressView>(progressImage: UIImage?) -> T {
    self.progressImage = progressImage
    return self as! T
  }
  
  @discardableResult public func apply<T: UIProgressView>(progressTintColor: UIColor?) -> T {
    self.progressTintColor = progressTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UIProgressView>(progressViewStyle: UIProgressView.Style) -> T {
    self.progressViewStyle = progressViewStyle
    return self as! T
  }
  
  @discardableResult public func apply<T: UIProgressView>(trackImage: UIImage?) -> T {
    self.trackImage = trackImage
    return self as! T
  }
  
  @discardableResult public func apply<T: UIProgressView>(trackTintColor: UIColor?) -> T {
    self.trackTintColor = trackTintColor
    return self as! T
  }
  
}
