Pod::Spec.new do |spec|
  spec.name                   = 'WemapMap'
  spec.version                = '0.1.0'
  spec.summary                = 'The Wemap Map iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_versions         = '5.7'

  # spec.source                 = { :s3 => "https://getwemap.mobile.com.s3.amazonaws.com/production/sdk/map/ios/#{spec.version}/WemapMap.xcframework.zip" }
  spec.source                 = { :s3 => "https://mobile-dev.bear2b.com.s3.amazonaws.com/wemap/sdk/map/ios/#{spec.version}/WemapMap.zip" }
  spec.vendored_frameworks    = 'Artifacts/WemapMap.xcframework'

  spec.dependency             'WemapCore', '0.1.0'
  spec.dependency             'MapLibre', '~>5.12.0'
  spec.dependency             'Turf', '~> 2.6'
end