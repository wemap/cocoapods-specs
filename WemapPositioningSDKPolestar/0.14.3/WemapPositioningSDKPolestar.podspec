Pod::Spec.new do |spec|
  spec.name                   = 'WemapPositioningSDKPolestar'
  spec.version                = '0.14.3'
  spec.summary                = 'The Wemap Polestar Positioning SDK iOS'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2024 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.10'
  spec.static_framework       = true

  spec.dependency             'WemapCoreSDK', "~>0.14.2"
  spec.dependency             'NAOSwiftProvider', '~>1.3.0'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/positioning/polestar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end
