//
//  StylingCodeViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class StylingCodeViewController: UIViewController {
  
  // MARK: - Views
  let containerView = UIView()
    .apply(style: Stylesheet.current.styles.roundedViewStyle)
    .apply(backgroundColor: Stylesheet.current.colors.background)
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  let titleLabel = UILabel()
    .apply(style: Stylesheet.current.styles.titleLabel)
    .apply(text: "Styling made simple")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  let descriptionLabel = UILabel()
    .apply(style: Stylesheet.current.styles.subtitleLabel)
    .apply(text: "With apply you can easily setup styles for your application and change them on the go.\nSimple and convenient! 🎉")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  let confirmButton = UIButton(type: .system)
    .apply(style: Stylesheet.current.styles.primaryActionButton)
    .apply(title: "Awesome 👍")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  let denyButton = UIButton(type: .system)
    .apply(style: Stylesheet.current.styles.secondaryActionButton)
    .apply(title: "Meh, not impressed")
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  
  // MARK: - Initialization
  init() {
    super.init(nibName: nil, bundle: nil)
    setupView()
  }
  
  required init?(coder aDecoder: NSCoder) { fatalError("init(coder:)") }
  
  
  // MARK: - Setup
  private func setupView() {
    title = "Styling (Code)"
    view.backgroundColor = Stylesheet.current.colors.backgroundAlt
    
    containerView.addSubviews([titleLabel, descriptionLabel, confirmButton, denyButton])
    view.addSubviews([containerView])
    
    constrainViews()
  }
  
  private func constrainViews() {
    NSLayoutConstraint.activate([
      containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      containerView.widthAnchor.constraint(equalToConstant: 280),
      
      titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
      titleLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15),
      titleLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -15),
      
      descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
      descriptionLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15),
      descriptionLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -15),
      
      confirmButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 25),
      confirmButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),

      denyButton.topAnchor.constraint(equalTo: confirmButton.bottomAnchor, constant: 15),
      denyButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
      denyButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
    ])
  }
  
}
