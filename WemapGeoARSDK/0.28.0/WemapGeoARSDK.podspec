Pod::Spec.new do |spec|
  spec.name                       = 'WemapGeoARSDK'
  spec.version                    = '0.28.0'
  spec.summary                    = 'The Wemap GeoAR iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '13.0'
  spec.swift_version              = '5.10'

  spec.frameworks                 = 'SceneKit', 'CoreLocation', 'AVFoundation', 'Metal'

  spec.dependency                   'WemapCoreSDK', "~>#{spec.version}"

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/geoar/#{spec.version}/#{spec.name}.zip" }

  spec.vendored_frameworks        = "#{spec.name}/#{spec.name}.xcframework"
end
