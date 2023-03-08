//
//  Created by Morten Faarkrog
//

import UIKit

public extension UICollectionView {
  
  @discardableResult func apply<T: UICollectionView>(allowsSelection: Bool) -> T {
    self.allowsSelection = allowsSelection
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionView>(allowsMultipleSelection: Bool) -> T {
    self.allowsMultipleSelection = allowsMultipleSelection
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionView>(backgroundView: UIView?) -> T {
    self.backgroundView = backgroundView
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionView>(collectionViewLayout: UICollectionViewLayout) -> T {
    self.collectionViewLayout = collectionViewLayout
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionView>(delegate: UICollectionViewDelegate?) -> T {
    self.delegate = delegate
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionView>(dataSource: UICollectionViewDataSource) -> T {
    self.dataSource = dataSource
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionView>(registerCellClass cellClass: AnyClass?, forReuseIdentifier reuseIdentifier: String) -> T {
    self.register(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
    return self as! T
  }
  
}
