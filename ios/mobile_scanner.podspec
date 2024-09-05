#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint mobile_scanner.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'mobile_scanner'
  s.version          = '5.2.1'
  s.summary          = 'A universal scanner for Flutter based on MLKit.'
  s.description      = <<-DESC
A Flutter plugin that provides a universal scanner using MLKit for barcode scanning. This package supports multiple barcode formats and provides an easy-to-use API for integrating barcode scanning functionality into your Flutter apps.
                       DESC
  s.homepage         = 'https://github.com/juliansteenbakker/mobile_scanner'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Julian Steenbakker' => 'juliansteenbakker@outlook.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'
  s.dependency       'GoogleMLKit/BarcodeScanning', '~> 6.0.0'
  s.dependency       'GoogleDataTransport', '~> 10.0' # Ensure this matches the requirement of MLKitCommon
  s.platform         = :ios, '13.0'
  s.static_framework = true
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
  s.swift_version    = '5.0'
  s.resource_bundles = { 'mobile_scanner_privacy' => ['Resources/PrivacyInfo.xcprivacy'] }
end