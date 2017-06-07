//
//  ViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 06/07/2017.
//  Copyright (c) 2017 Morten Faarkrog. All rights reserved.
//

import UIKit
import Apply

class ViewController: UIViewController {
  
  private let label: UILabel = UILabel()
    .apply(text: "🎉 Apply 🎉")
    .apply(font: UIFont.systemFont(ofSize: 30))
    .apply(translatesAutoresizingMaskIntoConstraints: false)
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(label)
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
  
}

