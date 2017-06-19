//
//  Theme.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Apply

struct Theme {
  
  struct Colors {
    let primary: UIColor
    let secondary: UIColor
    let text: UIColor
    let textAlt: UIColor
    let background: UIColor
    let backgroundAlt: UIColor
  }
  
  struct Fonts {
    let title: UIFont?
    let subtitle: UIFont?
    let h1: UIFont?
    let h2: UIFont?
    let body: UIFont?
  }
  
  struct Styles {
    // Full elements
    let titleLabel: UIViewStyle<UILabel>
    let subtitleLabel: UIViewStyle<UILabel>
    let primaryActionButton: UIViewStyle<UIButton>
    let secondaryActionButton: UIViewStyle<UIButton>
    
    // Components
    let roundedViewStyle: UIViewStyle<UIView>
    let solidButtonSizeStyle: UIViewStyle<UIButton>
  }
  
  let fonts: Fonts
  let colors: Colors
  let styles: Styles
  
  init(colors: Colors, fonts: Fonts, styles: Styles) {
    self.fonts = fonts
    self.colors = colors
    self.styles = styles
  }
  
}
