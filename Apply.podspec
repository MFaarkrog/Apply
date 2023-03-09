#
# Be sure to run `pod lib lint Apply.podspec' to ensure this is a valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'Apply'
  s.version          = '0.6.2'
  s.summary          = 'A framework for making it easier to create, change, and maintain the UI of your iOS applications.'

  s.description      = <<-DESC
A framework for making it easier to create, change, and maintain the UI of your iOS applications.

To be expanded...
                       DESC

  s.homepage         = 'https://github.com/MFaarkrog/Apply'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Morten Faarkrog' => 'mortenfaarkrog@gmail.com' }
  s.source           = { :git => 'https://github.com/MFaarkrog/Apply.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MFaarkrog'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Apply/Classes/**/*'
end
