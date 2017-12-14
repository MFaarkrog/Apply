//
//  Created by Morten Faarkrog
//

import UIKit

public extension UIScrollView {
 
  @discardableResult public func apply<T: UIScrollView>(bounces: Bool) -> T {
    self.bounces = bounces
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(canCancelContentTouches: Bool) -> T {
    self.canCancelContentTouches = canCancelContentTouches
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(contentInset: UIEdgeInsets) -> T {
    self.contentInset = contentInset
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(contentOffset: CGPoint) -> T {
    self.contentOffset = contentOffset
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(contentSize: CGSize) -> T {
    self.contentSize = contentSize
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(decelerationRate: CGFloat) -> T {
    self.decelerationRate = decelerationRate
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(delaysContentTouches: Bool) -> T {
    self.delaysContentTouches = delaysContentTouches
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(delegate: UIScrollViewDelegate?) -> T {
    self.delegate = delegate
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(isPagingEnabled: Bool) -> T {
    self.isPagingEnabled = isPagingEnabled
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(isScrollEnabled: Bool) -> T {
    self.isScrollEnabled = isScrollEnabled
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(maximumZoomScale: CGFloat) -> T {
    self.maximumZoomScale = maximumZoomScale
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(minimumZoomScale: CGFloat) -> T {
    self.minimumZoomScale = minimumZoomScale
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(scrollIndicatorInsets: UIEdgeInsets) -> T {
    self.scrollIndicatorInsets = scrollIndicatorInsets
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(showsHorizontalScrollIndicator: Bool) -> T {
    self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(showsVerticalScrollIndicator: Bool) -> T {
    self.showsVerticalScrollIndicator = showsVerticalScrollIndicator
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(showsScrollIndicator: Bool) -> T {
    self.showsHorizontalScrollIndicator = showsScrollIndicator
    self.showsVerticalScrollIndicator = showsScrollIndicator
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(zoomScale: CGFloat) -> T {
    self.zoomScale = zoomScale
    return self as! T
  }
  
  @discardableResult public func apply<T: UIScrollView>(bouncesZoom: Bool) -> T {
    self.bouncesZoom = bouncesZoom
    return self as! T
  }
  
  @available(iOS 10.0, *)
  @discardableResult public func apply<T: UIScrollView>(refreshControl: UIRefreshControl) -> T {
    self.refreshControl = refreshControl
    return self as! T
  }
  
}
