Pod::Spec.new do |spec|
  spec.name                       = 'WemapPositioningSDK'
  spec.version                    = '0.19.0'
  spec.summary                    = 'The Wemap Positioning iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2024 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '12.0'
  spec.swift_version              = '5.10'

  spec.frameworks                 = 'CoreLocation', 'CoreMotion', 'ARKit'

  spec.default_subspec            = 'Core'

  spec.subspec 'Core' do |core|

    core.vendored_frameworks      = "WemapPositioningSDK/WemapPositioningSDK.xcframework"

    core.xcconfig                 = { 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17' }

    core.dependency               'WemapCoreSDK', "~>#{spec.version}"
    core.dependency               'RxSwift', '~>6.8.0'
  end

  spec.subspec 'VPSARKit' do |vps_arkit|

    vps_arkit.vendored_frameworks = 'WemapPositioningSDK/WemapPositioningSDKVPSARKit.xcframework'

    vps_arkit.dependency          'WemapPositioningSDK/Core'
  end

  spec.source                     = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/positioning/ios/#{spec.version}/#{spec.name}.zip" }
end
