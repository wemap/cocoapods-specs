Pod::Spec.new do |spec|
  spec.name                       = 'WemapCoreSDK'
  spec.version                    = '1.0.0-beta.1'
  spec.summary                    = 'The Wemap Core iOS SDK'
  spec.description                = 'The Wemap Core iOS SDK — core types, routing, POI and analytics. Requires Xcode 26.0 or later (Swift 6.2 toolchain): the source uses Swift 6.2 language features (isolated deinit, @MainActor-isolated conformances) that earlier toolchains cannot build.'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '15.0'
  spec.swift_version              = '6.0'

  spec.frameworks                 = 'Foundation', 'CoreLocation', 'CoreVideo', 'Combine'
  
  spec.dependency                   'Turf', '4.0.0'

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/core/#{spec.version}/#{spec.name}.zip" }
  
  spec.vendored_frameworks        = "#{spec.name}/#{spec.name}.xcframework"
end