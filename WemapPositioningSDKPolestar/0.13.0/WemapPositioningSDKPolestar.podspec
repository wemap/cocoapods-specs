Pod::Spec.new do |spec|
  spec.name                   = 'WemapPositioningSDKPolestar'
  spec.version                = '0.13.0'
  spec.summary                = 'The Wemap Polestar Positioning SDK iOS'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2024 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.9'
  spec.static_framework       = true

  spec.dependency             'WemapCoreSDK', '~>0.13.0'
  spec.dependency             'NAOSwiftProvider', '~>1.3.0'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/dev/wemap/sdk/positioning/polestar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end
