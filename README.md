# Apply
[![Version](https://img.shields.io/cocoapods/v/Apply.svg?style=flat)](http://cocoapods.org/pods/Apply)
[![License](https://img.shields.io/cocoapods/l/Apply.svg?style=flat)](http://cocoapods.org/pods/Apply)
[![Platform](https://img.shields.io/cocoapods/p/Apply.svg?style=flat)](http://cocoapods.org/pods/Apply)

This project is a framework for making it easier to create, change, and maintain the UI of your iOS applications.

This is done by:
- Removing a lot of the boilerplate code needed when setting up views in code,
- Making it easier to read your UI code by having a simple API for changing properties that allows chaining of functions,
- Having less code and more reuse throughout your applications,
- Defining UI styles in a single place in such a way that styles can be combined together,
- Maintaining type-safety for your views to avoid having to force-cast. 

The framework supports most UIKit components and their properties. If you find anything missing, either create a pull request or open an issue. Thanks 🎉 


## Interface Builder?
It should be noted that this framework is not just for those who create all their views in code, but also those who rely on Interface Builder (IB). If you use IB together with this framework, I recommend setting up all view properties (fonts, colors, etc.) in code and only use IB for setting up the layout and constraints. This makes it easier to change your styling down the line.

How this could be done can be seen in the Example project.


## Requirements

- iOS 8.0+
- Xcode 8.0+
- Swift 3.0+


## Installation

Apply is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "Apply"
```


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Usage

Every `apply` function mutates some property/properties of the view calling the function and returns the same view back. 

Because you may not always need to use the resulting view, the result of calling the function can be discarded without you getting a warning (`@discardableResult`). This means you can do both:

```swift
let button = UIButton(type: .system)
  .apply(title: “#suchchaining”)
  .apply(titleFont: UIFont.systemFont(ofSize: 18))
```

… and …

```swift
let button = UIButton(type: .system)
  .apply(title: “#suchchaining”)

// some time later…
button.apply(borderColor: .black, borderWidth: 1)
```

### Applying view properties

As can be seen above, using `.apply` is straightforward. It support most UIKit components and their properties, and will be updated as new features are added in new iOS versions.

Examples of usage:

```swift
let titleLabel: UILabel = UILabel()
  .apply(font: UIFont.systemFont(ofSize: 24))
  .apply(textColor: .black)
  .apply(textAlignment: .center)
  .apply(text: "Title label")
  .apply(translatesAutoresizingMaskIntoConstraints: false)
  
let actionButton: UIButton = UIButton(type: .system)
  .apply(titleFont: UIFont.systemFont(ofSize: 18))
  .apply(titleColor: .red)
  .apply(title: "Action button")
  .apply(borderColor: .black, borderWidth: 1)
  .apply(translatesAutoresizingMaskIntoConstraints: false)

let containerView: UIView = UIView()
  .apply(shadowRadius: 2, shadowOpacity: 0.5, shadowColor: .black, shadowOffset: CGSize(width: 0, height: 2))
  .apply(backgroundColor: .lightGray)
  .apply(cornerRadius: 8)
  .apply(clipsToBounds: true)
  
let tableView = UITableView()
  .apply(isPagingEnabled: true)
  .apply(bounces: false)
  .apply(showsScrollIndicator: false)

lazy var stackView: UIStackView = {
  return UIStackView(arrangedSubviews: [self.titleLabel, self.actionButton])
    .apply(axis: .vertical)
    .apply(spacing: 10)
}()
```


### Styling

#### Apply a style
Quite often, you find yourself having to reuse the same styling for your view elements throughout your application. With Apply, setting up and applying styles is super simple. 
Somewhere in your application you define view styles that can be applied to UI elements of a certain type. 

In the example below, there's a reusable style for `UILabel`s being displayed as titles in your app, as well as a label making use of the style.

```swift
let titleLabelStyle = UIViewStyle<UILabel> {
  $0.apply(font: UIFont.systemFont(ofSize: 20))
    .apply(textColor: .red)
}

let titleLabel = UILabel()
  .apply(style: titleLabelStyle)
  .apply(text: "#verytitle”)
```

#### Combine and apply styles
To make it even easier to read, create, change, and maintain styles they have been set up in such a way that they can be combined.  

```swift
let borderedViewStyle = UIViewStyle<UIView> {
  $0.apply(borderColor: .black, borderWidth: 1)
}

let roundedViewStyle = UIViewStyle<UIView> {
  $0.apply(cornerRadius: 8)
}

let roundedBorderedViewStyle = borderedViewStyle.composing(with: roundedViewStyle)

let view = UIView()
  .apply(style: roundedBorderedViewStyle)
  .apply(backgroundColor: .red)
```


### Stylesheet

How you use and organize styles in your project is completely up to you. What may be useful is introducing a class/struct `Stylesheet` or alike in which you add all your app’s colors, fonts, reusable styles, and whatever else you may need. This way, it’s easier to read and maintain your code and you ensure that your UI is consistent throughout the app.

An example of such stylesheet could look like:

```swift
struct Stylesheet {

  struct Colors {
    static let primary = UIColor.red
    static let secondary = UIColor.blue
  }

  struct Fonts {
    static let title = UIFont.systemFont(ofSize: 24)
    static let h1 = UIFont.systemFont(ofSize: 20)
  }

  struct Styles {
    static let titleLabelStyle = UIViewStyle<UILabel> {
      $0.apply(font: Stylesheet.Fonts.title)
        .apply(textColor: Stylesheet.Colors.primary)
    }
  }

}
```

Which can then be used somewhere else in your application like so:

```swift
let titleLabel = UILabel()
  .apply(style: Stylesheet.Styles.titleLabelStyle)
  .apply(text: "#muchtitle #suchwow")
```

Another example where interchangeable themes has been utilized can be seen in the Example project.


## Communication

- If you found a bug, open an issue.
- If you have a feature request, open an issue.
- If you want to contribute, submit a pull request. Code is currently following the [RayWenderlich Swift Style Guide](https://github.com/raywenderlich/swift-style-guide)

## TODO

- Create good examples in the Example project
- Support new iOS 11 UIKit properties

## Author

Morten Faarkrog, [@MFaarkrog](https://twitter.com/mfaarkrog)

## License

Apply is available under the MIT license. See the LICENSE file for more info.
