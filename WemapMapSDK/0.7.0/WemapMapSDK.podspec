Pod::Spec.new do |spec|
  spec.name                   = 'WemapMapSDK'
  spec.version                = '0.7.0'
  spec.summary                = 'The Wemap Map iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_versions         = '5.8'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/map/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"

  spec.frameworks             = 'CoreLocation'

  spec.dependency             'WemapCoreSDK', '~>0.7.0'
  spec.dependency             'MapLibre', '~>5.13.0'
end