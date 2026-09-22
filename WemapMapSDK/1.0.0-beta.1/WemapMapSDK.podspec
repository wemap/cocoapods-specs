Pod::Spec.new do |spec|
  spec.name                       = 'WemapMapSDK'
  spec.version                    = '1.0.0-beta.1'
  spec.summary                    = 'The Wemap Map iOS SDK'
  spec.description                = 'The Wemap Map iOS SDK — MapLibre-based map rendering. Requires Xcode 26.0 or later (Swift 6.2 toolchain): the source uses Swift 6.2 language features (isolated deinit, @MainActor-isolated conformances) that earlier toolchains cannot build.'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '15.0'
  spec.swift_version              = '6.0'

  spec.frameworks                 = 'Foundation', 'UIKit', 'CoreLocation', 'CoreFoundation'

  spec.dependency                   'WemapCoreSDK', "#{spec.version}"
  spec.dependency                   'MapLibre', '6.30.0'

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/map/#{spec.version}/#{spec.name}.zip" }

  spec.vendored_frameworks        = "#{spec.name}/#{spec.name}.xcframework"
end
