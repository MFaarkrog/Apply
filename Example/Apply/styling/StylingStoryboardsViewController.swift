//
//  StylingStoryboardsViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class StylingStoryboardsViewController: UIViewController {
  
  @IBOutlet weak var containerView: UIView! {
    didSet {
      containerView
        .apply(style: Stylesheet.current.styles.roundedViewStyle)
        .apply(backgroundColor: Stylesheet.current.colors.background)
    }
  }
  
  @IBOutlet weak var titleLabel: UILabel! {
    didSet {
      titleLabel
        .apply(style: Stylesheet.current.styles.titleLabel)
        .apply(text: "Styling made simple")
    }
  }
  
  @IBOutlet weak var descriptionLabel: UILabel! {
    didSet {
      descriptionLabel
        .apply(style: Stylesheet.current.styles.subtitleLabel)
        .apply(text: "With apply you can easily setup styles for your application and change them on the go.\nSimple and convenient! 🎉")
    }
  }
  
  @IBOutlet weak var confirmButton: UIButton! {
    didSet {
      confirmButton
        .apply(style: Stylesheet.current.styles.primaryActionButton)
        .apply(title: "Awesome 👍")
    }
  }
  
  @IBOutlet weak var denyButton: UIButton! {
    didSet {
      denyButton
        .apply(style: Stylesheet.current.styles.secondaryActionButton)
        .apply(title: "Meh, not impressed")
    }
  }
  
  override func viewDidLoad() {
    view.backgroundColor = Stylesheet.current.colors.backgroundAlt
  }
}
