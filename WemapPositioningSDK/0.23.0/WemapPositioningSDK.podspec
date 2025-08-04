Pod::Spec.new do |spec|
  spec.name                       = 'WemapPositioningSDK'
  spec.version                    = '0.23.0'
  spec.summary                    = 'The Wemap Positioning iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '12.0'
  spec.swift_version              = '5.10'

  spec.frameworks                 = 'CoreLocation', 'CoreMotion', 'ARKit'

  spec.default_subspec            = 'VPSARKit'

  spec.subspec 'VPSARKit' do |subspec|

    subspec.vendored_frameworks   = 'WemapPositioningSDK/WemapPositioningSDKVPSARKit.xcframework'

    subspec.dependency              'WemapCoreSDK', "~>#{spec.version}"
    subspec.dependency              'RxSwift', '~>6.9.0'
  end

  spec.source                     = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/positioning/ios/#{spec.version}/#{spec.name}.zip" }
end
