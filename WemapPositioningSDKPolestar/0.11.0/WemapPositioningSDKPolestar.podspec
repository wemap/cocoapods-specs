Pod::Spec.new do |spec|
  spec.name                   = 'WemapPositioningSDKPolestar'
  spec.version                = '0.11.0'
  spec.summary                = 'The Wemap Polestar Positioning SDK iOS'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2023 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '11.0'
  spec.swift_version          = '5.9'
  spec.static_framework       = true

  spec.dependency             'WemapCoreSDK', '~>0.11.0'
  spec.dependency             'NAOSwiftProvider', '~>1.2.2'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/dev/wemap/sdk/positioning/polestar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end
