Pod::Spec.new do |spec|
  spec.name                       = 'WemapCoreSDK'
  spec.version                    = '0.28.0'
  spec.summary                    = 'The Wemap Core iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '13.0'
  spec.swift_version              = '5.10'

  spec.frameworks                 = 'Foundation', 'CoreLocation', 'CoreVideo', 'Combine'
  
  spec.dependency                   'Turf', '~>4.0.0'

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/core/#{spec.version}/#{spec.name}.zip" }
  
  spec.vendored_frameworks        = "#{spec.name}/#{spec.name}.xcframework"
end