//
//  Created by Morten Faarkrog
//

import UIKit

public extension UITableView {
  
  @discardableResult func apply<T: UITableView>(allowsMultipleSelection: Bool) -> T {
    self.allowsMultipleSelection = allowsMultipleSelection
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(allowsMultipleSelectionDuringEditing: Bool) -> T {
    self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(allowsSelection: Bool) -> T {
    self.allowsSelection = allowsSelection
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(allowsSelectionDuringEditing: Bool) -> T {
    self.allowsSelectionDuringEditing = allowsSelectionDuringEditing
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(backgroundView: UIView?) -> T {
    self.backgroundView = backgroundView
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(delegate: UITableViewDelegate?) -> T {
    self.delegate = delegate
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(dataSource: UITableViewDataSource) -> T {
    self.dataSource = dataSource
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(estimatedRowHeight: CGFloat) -> T {
    self.estimatedRowHeight = estimatedRowHeight
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(estimatedSectionFooterHeight: CGFloat) -> T {
    self.estimatedSectionFooterHeight = estimatedSectionFooterHeight
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(estimatedSectionHeaderHeight: CGFloat) -> T {
    self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
    return self as! T
  }

  @discardableResult func apply<T: UITableView>(registerCellClass cellClass: AnyClass?, forReuseIdentifier reuseIdentifier: String) -> T {
    self.register(cellClass, forCellReuseIdentifier: reuseIdentifier)
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(registerHeaderFooterViewClass headerFootClass: AnyClass?, forReuseIdentifier reuseIdentifier: String) -> T {
    self.register(headerFootClass, forCellReuseIdentifier: reuseIdentifier)
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(rowHeight: CGFloat) -> T {
    self.rowHeight = rowHeight
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(sectionFooterHeight: CGFloat) -> T {
    self.sectionFooterHeight = sectionFooterHeight
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(sectionHeaderHeight: CGFloat) -> T {
    self.sectionHeaderHeight = sectionHeaderHeight
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(separatorColor: UIColor) -> T {
    self.separatorColor = separatorColor
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(separatorEffect: UIVisualEffect?) -> T {
    self.separatorEffect = separatorEffect
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(separatorInset: UIEdgeInsets) -> T {
    self.separatorInset = separatorInset
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(separatorStyle: UITableViewCell.SeparatorStyle) -> T {
    self.separatorStyle = separatorStyle
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(tableHeaderView: UIView?) -> T {
    self.tableHeaderView = tableHeaderView
    return self as! T
  }
  
  @discardableResult func apply<T: UITableView>(tableFooterView: UIView?) -> T {
    self.tableFooterView = tableFooterView
    return self as! T
  }
  
  
}
