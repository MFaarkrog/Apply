//
//  StylingStylesheet.swift
//  Apply
//
//  Created by Morten Faarkrog on 6/7/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Apply
import Foundation

struct Stylesheet {

  static var current = Stylesheet.lightTheme
  
  // MARK: - Themes
  private static var lightTheme: Theme {
    let colors = Theme.Colors(
      primary: .red,
      secondary: UIColor.black.apply(alpha: 0.8),
      text: UIColor.black.apply(alpha: 0.9),
      edge: UIColor.black.apply(alpha: 0.25),
      background: UIColor.white
    )
    
    let fonts = Theme.Fonts(
      title: UIFont.systemFont(ofSize: 30),
      subtitle: UIFont.systemFont(ofSize: 20),
      h1: UIFont.boldSystemFont(ofSize: 20),
      h2: UIFont.boldSystemFont(ofSize: 17),
      body: UIFont.systemFont(ofSize: 15)
    )
    
    // Styles
    let roundedViewStyle = UIViewStyle<UIView> {
      $0.apply(cornerRadius: 10)
        .apply(clipsToBounds: true)
    }
    let edgedViewStyle = UIViewStyle<UIView> {
      $0.apply(borderWidth: 1)
        .apply(borderColor: colors.edge.apply(alpha: 0.25))
    }
    
    let styles = Theme.Styles(
      titleLabel: UIViewStyle<UILabel> {
        $0.apply(font: fonts.title)
          .apply(textColor: colors.text)
          .apply(textAlignment: .center)
      },
      subtitleLabel: UIViewStyle<UILabel> {
        $0.apply(font: fonts.subtitle)
          .apply(textColor: colors.text)
          .apply(textAlignment: .center)
      },
      primaryActionButton: UIViewStyle<UIButton> {
        $0.apply(titleFont: fonts.h2)
          .apply(titleColor: colors.primary)
          .apply(style: edgedViewStyle)
          .apply(style: roundedViewStyle)
      },
      secondaryActionButton: UIViewStyle<UIButton> {
        $0.apply(titleFont: fonts.body)
          .apply(titleColor: colors.secondary)
      },
      roundedViewStyle: roundedViewStyle,
      edgedViewStyle: edgedViewStyle
    )
    
    return Theme(colors: colors, fonts: fonts, styles: styles)
  }
  
}
