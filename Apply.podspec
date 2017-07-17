#
# Be sure to run `pod lib lint Apply.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Apply'
  s.version          = '0.2.0'
  s.summary          = 'A framework for making it easier to create, change, and maintain the UI of your iOS applications.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A framework for making it easier to create, change, and maintain the UI of your iOS applications.
                       DESC

  s.homepage         = 'https://github.com/MFaarkrog/Apply'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Morten Faarkrog' => 'mortenfaarkrog@gmail.com' }
  s.source           = { :git => 'https://github.com/MFaarkrog/Apply.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MFaarkrog'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Apply/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Apply' => ['Apply/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
