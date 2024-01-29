Pod::Spec.new do |spec|
  spec.name                       = 'WemapPositioningSDK'
  spec.version                    = '0.12.0'
  spec.summary                    = 'The Wemap Positioning iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '11.0'
  spec.swift_version              = '5.9'

  spec.frameworks                 = 'CoreLocation', 'CoreMotion', 'ARKit'

  spec.default_subspec            = 'Core'

  spec.subspec 'Core' do |core|

    core.vendored_frameworks      = "WemapPositioningSDK/WemapPositioningSDK.xcframework"

    core.xcconfig                 = { 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17' }

    core.dependency               'WemapCoreSDK', '~>0.12.0'
    core.dependency               'RxSwift', '~>6.6.0'
  end

  spec.subspec 'VPSARKit' do |vps_arkit|

    vps_arkit.vendored_frameworks = 'WemapPositioningSDK/WemapPositioningSDKVPSARKit.xcframework'

    vps_arkit.dependency          'WemapPositioningSDK/Core'
  end

  spec.source                     = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/dev/wemap/sdk/positioning/ios/#{spec.version}/#{spec.name}.zip" }
end
