//
//  HomeViewController.swift
//  Apply
//
//  Created by Morten Faarkrog on 06/07/2017.
//  Copyright (c) 2017 Morten Faarkrog. All rights reserved.
//

import UIKit
import Apply

class HomeViewController: UIViewController {
  
  @IBAction func simpleCodeButtonDidTouch(_ sender: Any) {
    let simpleCodeVC = SimpleCodeViewController()
    navigationController?.pushViewController(simpleCodeVC, animated: true)
  }
  
  @IBAction func stylingCodeButtonDidTouch(_ sender: Any) {
    let stylingCodeVC = StylingCodeViewController()
    navigationController?.pushViewController(stylingCodeVC, animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let backItem = UIBarButtonItem()
    backItem.title = ""
    navigationItem.backBarButtonItem = backItem
  }
  
}

