Pod::Spec.new do |m|
  
  m.name                  = 'MapLibre'
  m.version               = '5.12.2'
  m.summary               = 'Open source vector map solution for iOS with full styling capabilities.'
  m.description           = 'Open source, OpenGL-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage              = 'https://maplibre.org'
  m.license               = { :type => 'BSD' }
  m.author                = { 'MapLibre' => '' }
  m.screenshot            = 'https://maplibre.org/maplibre-gl-native/ios/api/img/screenshot.png'
  m.documentation_url     = 'https://maplibre.org/maplibre-gl-native/ios/api/'

  m.source                = { :http => "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v#{m.version}/Mapbox-#{m.version}.zip" }

  m.platform              = :ios
  m.ios.deployment_target = '9.0'

  m.vendored_frameworks   = 'Mapbox.xcframework'
end