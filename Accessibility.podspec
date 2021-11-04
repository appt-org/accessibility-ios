#
# Be sure to run `pod lib lint Accessibility.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Accessibility'
  s.module_name      = 'Appt'
  s.version          = '0.3.1'
  s.summary          = 'Accessibility features in a unified way.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The purpose of this pod is to provide a unified way for accessibility features on Android and iOS.
                       DESC

  s.homepage         = 'https://github.com/appt-nl/accessibility-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jan Jaap de Groot' => 'janjaap@appt.nl' }
  s.source           = { :git => 'https://github.com/appt-nl/accessibility-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.source_files = 'Accessibility/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Accessibility' => ['Accessibility/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
