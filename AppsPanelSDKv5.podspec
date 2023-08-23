Pod::Spec.new do |s|
  s.name          = "AppsPanelSDKv5"
  s.version       = "5.4.0"
  s.summary       = "AppsPanelSDKv5"
  s.homepage      = "https://appspanel.readme.io/docs/ios-getting-started-v5"
  s.license       = { :type => "Copyright", :file => "LICENSE" }
  s.author        = "Apps Panel"
  s.platform      = :ios, "11.0"
  s.swift_version = "5.5"
  s.source        = { :git => "https://github.com/appspanel/AppsPanelSDKv5.git", :tag => "#{s.version}"}

  s.vendored_frameworks = 'AppsPanelSDK.xcframework'
  s.resource = 'AppsPanelResources.bundle'

  s.frameworks    = 'Foundation', 'UIKit', 'CoreServices', 'CoreTelephony', 'UserNotifications', 'WebKit'
  s.ios.dependency 'Alamofire', '5.7.0'
  s.ios.dependency 'SwiftJWT', '3.6.200'
  s.ios.dependency 'KeychainAccess'
  s.ios.dependency 'DatadogSDK', '1.13.0'
end