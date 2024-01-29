Pod::Spec.new do |spec|
  spec.name                   = 'WemapMapSDK'
  spec.version                = '0.12.0'
  spec.summary                = 'The Wemap Map iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_version          = '5.9'

  spec.frameworks             = 'CoreLocation', 'UIKit', 'Foundation'

  spec.dependency             'WemapCoreSDK', '~>0.12.0'
  spec.dependency             'MapLibre', '~>5.13.0'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/dev/wemap/sdk/map/ios/#{spec.version}/#{spec.name}.zip" }
  
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end