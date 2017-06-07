//
//  Created by Morten Faarkrog
//

import UIKit

extension UIDatePicker {
 
  @discardableResult public func apply<T: UIDatePicker>(calendar: Calendar) -> T {
    self.calendar = calendar
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(date: Date) -> T {
    self.date = date
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(locale: Locale?) -> T {
    self.locale = locale
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(timeZone: TimeZone?) -> T {
    self.timeZone = timeZone
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(datePickerMode: UIDatePickerMode) -> T {
    self.datePickerMode = datePickerMode
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(maximumDate: Date?) -> T {
    self.maximumDate = maximumDate
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(minimumDate: Date?) -> T {
    self.minimumDate = minimumDate
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(minuteInterval: Int) -> T {
    self.minuteInterval = minuteInterval
    return self as! T
  }
  
  @discardableResult public func apply<T: UIDatePicker>(countDownDuration: TimeInterval) -> T {
    self.countDownDuration = countDownDuration
    return self as! T
  }

}
