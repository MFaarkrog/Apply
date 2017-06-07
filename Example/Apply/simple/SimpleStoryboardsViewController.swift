//
//  SimpleStoryboardsViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SimpleStoryboardsViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var titleLabel: UILabel! {
    didSet {
      titleLabel
        .apply(font: Styles.Fonts.h1)
        .apply(textColor: Styles.Colors.primary)
        .apply(textAlignment: .center)
        .apply(text: "Apply")
    }
  }
  
  @IBOutlet weak var subtitleLabel: UILabel! {
    didSet {
      subtitleLabel
        .apply(font: Styles.Fonts.h2)
        .apply(textColor: Styles.Colors.secondary)
        .apply(numberOfLines: 0)
        .apply(textAlignment: .center)
        .apply(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vos squalidius, illorum vides quam niteat oratio. Sed ego in hoc resisto; Sed ad bona praeterita redeamus.")
    }
  }
  
  @IBOutlet weak var actionButton: UIButton! {
    didSet {
      actionButton
        .apply(titleFont: Styles.Fonts.button)
        .apply(titleColor: Styles.Colors.button)
        .apply(title: "I do nothing!")
    }
  }
  
  // MARK: - View lifecycle
  override func viewDidLoad() {
    view.backgroundColor = Styles.Colors.background
  }
  
}
