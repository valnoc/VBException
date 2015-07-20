#
# Be sure to run `pod lib lint MyLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VBException"
  s.version          = "1.0.0"
  s.summary          = "VBException is a base class for your own exceptions."
  s.description      = <<-DESC
                       VBException is a base class for your own exceptions.
Create a subclass and implement <i>+reasonWithUserInfo:</i> method to provide useful reason information.
                       DESC
  s.homepage         = "https://github.com/valnoc/VBException"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Valeriy Bezuglyy" => "valnocorner@gmail.com" }
s.source           = { :git => "https://github.com/valnoc/VBException.git", :tag => "v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'VBException/**/*'
  # s.resource_bundles = {
  #  'MyLib' => ['Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
