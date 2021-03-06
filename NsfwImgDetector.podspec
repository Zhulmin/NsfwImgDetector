#
# Be sure to run `pod lib lint NsfwImgDetector.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NsfwImgDetector'
  s.version          = '1.0.0'
  s.swift_version    = '5.0'
  s.summary          = 'NSFW Content Detection of nudity with CoreML.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Library for scanning images for NSFW (Not Safe For Work) content.
                       DESC

  s.homepage         = 'https://github.com/Zhulmin/NsfwImgDetector'
 
  s.license          = { :type => 'BSD', :file => 'LICENSE' }
  s.author           = { 'zhulmin' => 'zhulmin1458@gmail.com' }
  s.source           = { :git => 'https://github.com/Zhulmin/NsfwImgDetector.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'NsfwImgDetector/Classes/**/*'


  
end
