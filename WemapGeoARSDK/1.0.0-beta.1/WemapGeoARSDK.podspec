Pod::Spec.new do |spec|
  spec.name                       = 'WemapGeoARSDK'
  spec.version                    = '1.0.0-beta.1'
  spec.summary                    = 'The Wemap GeoAR iOS SDK'
  spec.description                = 'The Wemap GeoAR iOS SDK — AR overlay (SceneKit/Metal). Requires Xcode 26.0 or later (Swift 6.2 toolchain): the source uses Swift 6.2 language features (isolated deinit, @MainActor-isolated conformances) that earlier toolchains cannot build.'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '15.0'
  spec.swift_version              = '6.0'

  spec.frameworks                 = 'SceneKit', 'CoreLocation', 'AVFoundation', 'Metal'

  spec.dependency                   'WemapCoreSDK', "#{spec.version}"

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/geoar/#{spec.version}/#{spec.name}.zip" }

  spec.vendored_frameworks        = "#{spec.name}/#{spec.name}.xcframework"
end
