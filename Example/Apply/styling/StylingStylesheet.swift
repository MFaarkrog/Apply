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
  
  internal static var current = Stylesheet.default
  private static var currentThemeIndex = 0
  private static let themes = [Stylesheet.default, Stylesheet.fun]
  
  // MARK: -
  internal static func toggleTheme() {
    currentThemeIndex += 1
    if currentThemeIndex >= themes.count {
      currentThemeIndex = 0
    }
    
    Stylesheet.current = Stylesheet.themes[currentThemeIndex]
  }
  
  
  // MARK: - Default styles
  private static let roundedViewStyle = UIViewStyle<UIView> {
    $0.apply(cornerRadius: 10)
      .apply(clipsToBounds: true)
  }
  
  private static let solidButtonSizeStyle = UIViewStyle<UIButton> {
    $0.widthAnchor.constraint(equalToConstant: 200).isActive = true
    $0.heightAnchor.constraint(equalToConstant: 50).isActive = true
  }
  
  
  // MARK: - Themes
  private static var `default`: Theme {
    let colors = Theme.Colors(
      primary: .black,
      secondary: .darkGray,
      text: .black,
      textAlt: .white,
      background: .white,
      backgroundAlt: UIColor.darkGray
    )
    
    let fonts = Theme.Fonts(
      title: UIFont.systemFont(ofSize: 22),
      subtitle: UIFont.systemFont(ofSize: 16),
      h1: UIFont.boldSystemFont(ofSize: 16),
      h2: UIFont.boldSystemFont(ofSize: 15),
      body: UIFont.systemFont(ofSize: 15)
    )
    
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
          .apply(numberOfLines: 0)
      },
      primaryActionButton: UIViewStyle<UIButton> {
        $0.apply(titleFont: fonts.h1)
          .apply(titleColor: colors.textAlt)
          .apply(backgroundColor: colors.primary)
          .apply(style: solidButtonSizeStyle)
          .apply(cornerRadius: 50/2)
      },
      secondaryActionButton: UIViewStyle<UIButton> {
        $0.apply(titleFont: fonts.h2)
          .apply(titleColor: colors.secondary)
      },
      roundedViewStyle: roundedViewStyle,
      solidButtonSizeStyle: solidButtonSizeStyle
    )
    
    return Theme(colors: colors, fonts: fonts, styles: styles)
  }
  
  
  private static var fun: Theme {
    let colors = Theme.Colors(
      primary: .red,
      secondary: .orange,
      text: .blue,
      textAlt: .yellow,
      background: .white,
      backgroundAlt: .darkGray
    )
    
    let fonts = Theme.Fonts(
      title: UIFont.systemFont(ofSize: 25),
      subtitle: UIFont.systemFont(ofSize: 17),
      h1: UIFont.boldSystemFont(ofSize: 17),
      h2: UIFont.boldSystemFont(ofSize: 15),
      body: UIFont.systemFont(ofSize: 15)
    )
    
    let styles = Theme.Styles(
      titleLabel: UIViewStyle<UILabel> {
        $0.apply(font: fonts.title)
          .apply(textColor: colors.primary)
          .apply(textAlignment: .center)
      },
      subtitleLabel: UIViewStyle<UILabel> {
        $0.apply(font: fonts.subtitle)
          .apply(textColor: colors.text)
          .apply(textAlignment: .center)
          .apply(numberOfLines: 0)
      },
      primaryActionButton: UIViewStyle<UIButton> {
        $0.apply(titleFont: fonts.h1)
          .apply(titleColor: colors.textAlt)
          .apply(backgroundColor: colors.primary)
          .apply(style: solidButtonSizeStyle)
          .apply(cornerRadius: 50/2)
      },
      secondaryActionButton: UIViewStyle<UIButton> {
        $0.apply(titleFont: fonts.h2)
          .apply(titleColor: colors.secondary)
      },
      roundedViewStyle: roundedViewStyle,
      solidButtonSizeStyle: solidButtonSizeStyle
    )
    
    return Theme(colors: colors, fonts: fonts, styles: styles)
  }
  
}
