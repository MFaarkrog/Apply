//
//  Created by Morten Faarkrog
//

import UIKit

extension UIPageControl {

  @discardableResult public func apply<T: UIPageControl>(currentPage: Int) -> T {
    self.currentPage = currentPage
    return self as! T
  }
  
  @discardableResult public func apply<T: UIPageControl>(numberOfPages: Int) -> T {
    self.numberOfPages = numberOfPages
    return self as! T
  }
  
  @discardableResult public func apply<T: UIPageControl>(hidesForSinglePage: Bool) -> T {
    self.hidesForSinglePage = hidesForSinglePage
    return self as! T
  }
  
  @discardableResult public func apply<T: UIPageControl>(pageIndicatorTintColor: UIColor?) -> T {
    self.pageIndicatorTintColor = pageIndicatorTintColor
    return self as! T
  }
  
  @discardableResult public func apply<T: UIPageControl>(currentPageIndicatorTintColor: UIColor?) -> T {
    self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
    return self as! T
  }
  
}
