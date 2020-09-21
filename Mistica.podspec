#
# Be sure to run `pod lib lint Mistica.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Mistica'
  s.version          = '2.0.0'
  s.summary          = 'Mistica is an iOS framework that contains reusable UI components and utilities for the Telefonica group.'
  s.description      = <<-DESC
  Mistica is an iOS framework that contains reusable UI components and utilities for the Telefonica group.
                       DESC

  s.homepage         = 'https://github.com/Telefonica/mistica-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Novum' => 'appscore@tuenti.com' }
  s.source           = { :git => 'https://github.com/Telefonica/mistica-ios/mistica-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Mistica/**/*.swift'

  s.resources = ['Mistica/Resources/*']

  s.frameworks = 'UIKit'
  s.dependency 'lottie-ios', '3.1.8'
end
