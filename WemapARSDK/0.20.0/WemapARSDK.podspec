Pod::Spec.new do |spec|
  spec.name                   = 'WemapARSDK'
  spec.version                = '0.20.0'
  spec.summary                = 'The Wemap AR iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '13.0'
  spec.swift_version          = '5.10'

  spec.frameworks             = 'ARKit', 'SceneKit', 'CoreLocation'

  version                     = "~>#{spec.version}"
  spec.dependency             'WemapCoreSDK', version
  spec.dependency             'WemapPositioningSDK/VPSARKit', version

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/ar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end
