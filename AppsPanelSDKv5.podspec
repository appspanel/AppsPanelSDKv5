Pod::Spec.new do |s|
  s.name          = "AppsPanelSDKv5"
  s.version       = "5.6.0"
  s.summary       = "AppsPanelSDKv5"
  s.homepage      = "https://appspanel.readme.io/docs/ios-getting-started-v5"
  s.license       = { :type => "Copyright", :file => "LICENSE" }
  s.author        = "Apps Panel"
  s.platform      = :ios, "15.0"
  s.swift_version = "5.5"
  s.source        = { :git => "https://github.com/appspanel/AppsPanelSDKv5.git", :tag => "#{s.version}"}
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'AppsPanelSDK.xcframework'
    core.resource = 'AppsPanelResources.bundle'
    core.frameworks = 'Foundation', 'UIKit', 'CoreServices', 'CoreTelephony', 'UserNotifications', 'WebKit'
    core.ios.dependency 'Alamofire', '5.10.2'
    core.ios.dependency 'SwiftJWT', '3.6.200'
    core.ios.dependency 'KeychainAccess'
    core.ios.dependency 'DatadogCore', '2.26.0'
    core.ios.dependency 'DatadogLogs', '2.26.0'
  end
  
  s.subspec 'NotificationService' do |notification|
    notification.vendored_frameworks = 'AppsPanelSDKExtension.xcframework'
    notification.dependency 'AppsPanelSDKv5/Core'
  end
end