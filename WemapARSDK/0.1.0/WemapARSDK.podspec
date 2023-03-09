Pod::Spec.new do |spec|
  spec.name                   = 'WemapARSDK'
  spec.version                = '0.1.0'
  spec.summary                = 'The Wemap AR iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '13.0'
  spec.swift_version          = '5.7'

  # spec.source                 = { :s3 => "https://getwemap.mobile.com.s3.amazonaws.com/sdk/ar/ios/#{s.version}/#{spec.name}.zip" }
  spec.source                 = { :s3 => "https://mobile-dev.bear2b.com.s3.amazonaws.com/wemap/sdk/ar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"

  spec.framework              = 'RealityKit'
  spec.framework              = 'ARKit'

  spec.dependency             'WemapCoreSDK', '0.1.0'
  spec.dependency             'WemapPositioningSDK', '0.1.0'
end
