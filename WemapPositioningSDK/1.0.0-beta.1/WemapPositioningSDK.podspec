Pod::Spec.new do |spec|
  spec.name                       = 'WemapPositioningSDK'
  spec.version                    = '1.0.0-beta.1'
  spec.summary                    = 'The Wemap Positioning iOS SDK'
  spec.description                = 'The Wemap Positioning iOS SDK — VPS (ARKit) and GPS indoor/outdoor positioning. Requires Xcode 26.0 or later (Swift 6.2 toolchain): the source uses Swift 6.2 language features (isolated deinit, @MainActor-isolated conformances) that earlier toolchains cannot build.'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '15.0'
  spec.swift_version              = '6.0'

  spec.frameworks                 = 'CoreLocation'

  spec.dependency                   'WemapCoreSDK', "#{spec.version}"

  spec.subspec 'VPSARKit' do |subspec|

    subspec.frameworks            = 'ARKit', 'CoreMotion', 'Combine'

    subspec.vendored_frameworks   = "#{spec.name}/#{spec.name}VPSARKit.xcframework"
  end

  spec.subspec 'GPS' do |subspec|
    subspec.vendored_frameworks   = "#{spec.name}/#{spec.name}GPS.xcframework"
  end

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/positioning/#{spec.version}/#{spec.name}.zip" }
end
