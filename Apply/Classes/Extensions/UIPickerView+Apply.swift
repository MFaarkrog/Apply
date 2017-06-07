//
//  Created by Morten Faarkrog
//

import UIKit

extension UIPickerView {

  @discardableResult public func apply<T: UIPickerView>(delegate: UIPickerViewDelegate?) -> T {
    self.delegate = delegate
    return self as! T
  }
  
  @discardableResult public func apply<T: UIPickerView>(dataSource: UIPickerViewDataSource) -> T {
    self.dataSource = dataSource
    return self as! T
  }
  
  @discardableResult public func apply<T: UIPickerView>(showsSelectionIndicator: Bool) -> T {
    self.showsSelectionIndicator = showsSelectionIndicator
    return self as! T
  }
  
}
