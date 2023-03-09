Pod::Spec.new do |spec|
  spec.name                   = 'WemapPositioningSDK'
  spec.version                = '0.1.0'
  spec.summary                = 'The Wemap Positioning iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_versions         = '5.7'

  # spec.source                 = { :s3 => "https://mobile.getwemap.com.s3.amazonaws.com/sdk/positioning/ios/#{s.version}/#{spec.name}.zip" }
  spec.source                 = { :s3 => "https://mobile-dev.bear2b.com.s3.amazonaws.com/wemap/sdk/positioning/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"

  spec.frameworks              = 'ARKit', 'CoreLocation', 'CoreMotion'
  spec.xcconfig                = { 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17' }

  spec.dependency             'WemapCoreSDK', '0.1.0'
end
