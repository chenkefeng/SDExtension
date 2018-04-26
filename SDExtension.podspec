#
# Be sure to run `pod lib lint SDExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SDExtension'
  s.version          = '0.0.2'
  s.summary          = '常用扩展'

  s.homepage         = 'https://github.com/chenkefeng/SDExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenkefeng_java@163.com' => 'chenkefeng@kuaicto.com' }
  s.source           = { :git => 'https://github.com/chenkefeng/SDExtension.git', :tag => s.version.to_s }
  s.swift_version = '4.1'
  
  s.ios.deployment_target = '8.0'

  s.source_files = 'SDExtension/Classes/**/*'
  
  s.frameworks = 'UIKit'
  
  
end
