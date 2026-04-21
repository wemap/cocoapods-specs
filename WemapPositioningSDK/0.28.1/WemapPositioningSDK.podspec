Pod::Spec.new do |spec|
  spec.name                       = 'WemapPositioningSDK'
  spec.version                    = '0.28.1'
  spec.summary                    = 'The Wemap Positioning iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2026 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '13.0'
  spec.swift_version              = '5.10'

  spec.frameworks                 = 'CoreLocation'

  spec.dependency                   'WemapCoreSDK', "~>#{spec.version}"

  spec.subspec 'VPSARKit' do |subspec|

    subspec.frameworks            = 'ARKit', 'CoreMotion', 'Combine'

    subspec.vendored_frameworks   = "#{spec.name}/#{spec.name}VPSARKit.xcframework"
  end

  spec.subspec 'GPS' do |subspec|
    subspec.vendored_frameworks   = "#{spec.name}/#{spec.name}GPS.xcframework"
  end

  spec.source                     = { :http => "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios/positioning/#{spec.version}/#{spec.name}.zip" }
end
