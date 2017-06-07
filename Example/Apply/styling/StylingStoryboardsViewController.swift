//
//  StylingStoryboardsViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class StylingStoryboardsViewController: UIViewController {
  
  @IBOutlet weak var initialsContainerView: UIView! {
    didSet {
      initialsContainerView
        .apply(style: Stylesheet.current.styles.roundedViewStyle)
        .apply(backgroundColor: Stylesheet.current.colors.primary)
    }
  }
  
  @IBOutlet weak var initialsLabel: UILabel! {
    didSet {
      initialsLabel
        .apply(style: Stylesheet.current.styles.titleLabel)
        .apply(text: "MF")
    }
  }
  
  @IBOutlet weak var nameLabel: UILabel! {
    didSet {
      nameLabel
        .apply(style: Stylesheet.current.styles.subtitleLabel)
        .apply(textAlignment: .left)
        .apply(text: "Morten Faarkrog")
    }
  }
  
  @IBOutlet weak var followButton: UIButton! {
    didSet {
      followButton
        .apply(style: Stylesheet.current.styles.primaryActionButton)
        .apply(title: "Follow now")
    }
  }
  
  override func viewDidLoad() {
    view.backgroundColor = Stylesheet.current.colors.background
  }
}
