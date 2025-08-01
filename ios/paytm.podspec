#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint paytm.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'paytm'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin'
  s.description      = <<-DESC
A new Flutter plugin
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

#  s.preserve_paths = 'PaymentSDK.framework'
#  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework PaymentSDK' }
#  s.vendored_frameworks = 'PaymentSDK.framework'
  
  s.preserve_paths = 'AppInvokeSDK.xcframework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework AppInvokeSDK' }
  s.vendored_frameworks = 'AppInvokeSDK.xcframework'
  
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
end
