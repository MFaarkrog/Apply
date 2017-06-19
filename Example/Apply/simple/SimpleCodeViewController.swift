//
//  SimpleCodeViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SimpleCodeViewController: UIViewController {
  
  // MARK: - Views
  private let titleLabel: UILabel = UILabel()
    .apply(font: Styles.Fonts.h1)
    .apply(textColor: Styles.Colors.primary)
    .apply(textAlignment: .center)
    .apply(text: "Apply")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  private let subtitleLabel: UILabel = UILabel()
    .apply(font: Styles.Fonts.h2)
    .apply(textColor: Styles.Colors.secondary)
    .apply(numberOfLines: 0)
    .apply(textAlignment: .center)
    .apply(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vos squalidius, illorum vides quam niteat oratio. Sed ego in hoc resisto; Sed ad bona praeterita redeamus.")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  private let actionButton: UIButton = UIButton(type: .system)
    .apply(titleFont: Styles.Fonts.button)
    .apply(titleColor: Styles.Colors.button)
    .apply(title: "I do nothing!")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  
  // MARK: - Initialization
  init() {
    super.init(nibName: nil, bundle: nil)
    setupView()
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:)") }
  
  
  // MARK: - Setup
  private func setupView() {
    title = "Simple (Code)"
    view.backgroundColor = Styles.Colors.background
    view.addSubviews([titleLabel, subtitleLabel, actionButton])
    constrainViews()
  }
  
  private func constrainViews() {
    titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    titleLabel.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 20).isActive = true
    
    subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
    subtitleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
    subtitleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    
    actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    actionButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20).isActive = true
  }
  
}
