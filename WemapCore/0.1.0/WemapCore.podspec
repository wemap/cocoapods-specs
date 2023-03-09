Pod::Spec.new do |spec|
  spec.name                   = 'WemapCore'
  spec.version                = '0.1.0'
  spec.summary                = 'The Wemap Core iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_versions         = '5.7'

  # spec.source                 = { :s3 => "https://getwemap.mobile.com.s3.amazonaws.com/production/sdk/core/ios/#{spec.version}/WemapCore.zip" }
  spec.source                 = { :s3 => "https://mobile-dev.bear2b.com.s3.amazonaws.com/wemap/sdk/core/ios/#{spec.version}/WemapCore.zip" }
  spec.vendored_frameworks    = 'Artifacts/WemapCore.xcframework'

  spec.dependency             'Alamofire', '~>5.6.0'
  
  rx_version                  = '~>6.5.0'
  spec.dependency             'RxSwift', rx_version
  spec.dependency             'RxCocoa', rx_version
end