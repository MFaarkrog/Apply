//
//  Created by Morten Faarkrog
//

import UIKit

public extension UICollectionViewFlowLayout {
    
  @discardableResult func apply<T: UICollectionViewFlowLayout>(estimatedItemSize: CGSize) -> T {
    self.estimatedItemSize = estimatedItemSize
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionViewFlowLayout>(itemSize: CGSize) -> T {
    self.itemSize = itemSize
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionViewFlowLayout>(minimumInteritemSpacing: CGFloat) -> T {
    self.minimumInteritemSpacing = minimumInteritemSpacing
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionViewFlowLayout>(minimumLineSpacing: CGFloat) -> T {
    self.minimumLineSpacing = minimumLineSpacing
    return self as! T
  }

  @discardableResult func apply<T: UICollectionViewFlowLayout>(sectionInset: UIEdgeInsets) -> T {
    self.sectionInset = sectionInset
    return self as! T
  }
  
  @discardableResult func apply<T: UICollectionViewFlowLayout>(scrollDirection: UICollectionView.ScrollDirection) -> T {
    self.scrollDirection = scrollDirection
    return self as! T
  }
  
}
