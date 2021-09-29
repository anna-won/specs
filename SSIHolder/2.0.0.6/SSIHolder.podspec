#
# Be sure to run `pod lib lint SSIHolder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SSIHolder'
  s.version          = '2.0.0.6'
  s.swift_version    = '5.0'
  s.summary          = 'SSIHolder. ios SDK'

  s.description      = 'Self Sovrin Idendity SDK for iOS'
  s.homepage         = 'https://github.com/anna-won/pod-test'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anna-won' => 'togass@sk.com' }
  
  s.source           = { :git => 'https://anna-won@github.com/anna-won/SSIHolder.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '12.4'
  
  #s.module_name = 'SSIHolder'
  
  s.frameworks = 'Indy','SSIHolder'
  s.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => 'Frameworks, ProjectSource/Indy',
      'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
      'ENABLE_BITCODE' => 'NO',
      'SKIP_INSTALL' => 'NO',
      'BUILD_LIBRARIES_FOR_DISTRIBUTION' => 'YES'
  }
  s.vendored_frameworks = 'ProjectSource/Indy/Indy.xcframework', 'Frameworks/SSIHolder.xcframework'

end

