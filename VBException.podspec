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
  s.version          = "1.0.1"
  s.summary          = "VBException is a base class for your own exceptions."
  s.description      = <<-DESC
VBException is a base class for your own exceptions. It makes exception creation and handling more effective.

Use case

1. Create VBException subclass.
2. Implement <i>+reasonWithUserInfo:</i> method.
3. Call <i>+exception:</i> or <i>+exceptionWithUserInfo:</i> to create an instance.

By default, exception name is its classname. It can be changed by implementing <i>+name</i> method.
                       DESC
  s.homepage         = "https://github.com/valnoc/VBException"
  s.license          = 'MIT'
  s.author           = { "Valeriy Bezuglyy" => "valnocorner@gmail.com" }
  s.source           = { :git => "https://github.com/valnoc/VBException.git", :tag => "v#{s.version}" }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'VBException/**/*'
end
