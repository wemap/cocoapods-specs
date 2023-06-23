Pod::Spec.new do |spec|
  spec.name                   = 'WemapCoreSDK'
  spec.version                = '0.6.0'
  spec.summary                = 'The Wemap Core iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_versions         = '5.8'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/core/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"

  spec.frameworks             = 'CoreLocation'

  rx_version                  = '~>6.5.0'
  spec.dependency             'RxSwift', rx_version
  spec.dependency             'RxCocoa', rx_version
  
  spec.dependency             'Alamofire', '~>5.7.0'
  spec.dependency             'Turf', '~> 2.6'
end