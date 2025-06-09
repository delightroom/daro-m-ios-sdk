Pod::Spec.new do |spec|
  spec.name = 'DaroMAds'
  spec.version = '1.1.8-alpha'
  spec.summary = 'Ad network mediation sdk for iOS.'
  spec.description = <<-DESC
                      Daro is is a SDK that helps you to easily integrate ad networks into your app.
                      DESC
  spec.homepage = 'https://delightroom.com'
  spec.license = { :type => 'Custom' }
  spec.author = { 'Won Jo' => 'lion@delightroom.com' }
  spec.source = { :http => "https://github.com/delightroom/daro-m-ios-sdk/releases/download/#{spec.version}/DaroM.xcframework.zip" }
  spec.swift_version = '5.7'
  spec.ios.deployment_target = '14.1'

  spec.resource_bundles = {
    'DaroMAdsResources' => ['DaroM.xcframework/ios-arm64/DaroM.framework/PrivacyInfo.xcprivacy']
  }

  spec.static_framework = false
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.vendored_frameworks = 'DaroM.xcframework'

  spec.dependency 'AppLovinSDK', '13.1.0'
  spec.dependency 'AppLovinMediationFyberAdapter', '8.3.6.0'
  spec.dependency 'AppLovinMediationGoogleAdapter', '12.4.0.0'
  spec.dependency 'AppLovinMediationInMobiAdapter', '10.8.3.0'
  spec.dependency 'AppLovinMediationIronSourceAdapter', '8.8.0.0.0'
  spec.dependency 'AppLovinMediationVungleAdapter', '7.5.1.0'
  spec.dependency 'AppLovinMediationFacebookAdapter', '6.17.1.0'
  spec.dependency 'AppLovinMediationMintegralAdapter', '7.7.8.0.0'
  spec.dependency 'AppLovinMediationMobileFuseAdapter', '1.9.1.0'
  spec.dependency 'AppLovinMediationOguryPresageAdapter', '5.0.2.0'
  spec.dependency 'AppLovinMediationByteDanceAdapter', '7.1.1.1.0'
  spec.dependency 'AppLovinMediationSmaatoAdapter', '22.9.3.0'
  spec.dependency 'AppLovinMediationUnityAdsAdapter', '4.14.2.0'
  spec.dependency 'AppLovinMediationVerveAdapter', '3.6.0.0'
  spec.dependency 'AmazonPublisherServicesSDK', '5.2.0'
  spec.dependency 'AppLovinMediationAmazonAdMarketplaceAdapter', '5.2.0.0'
  spec.dependency 'AppLovinMediationMolocoAdapter', '3.9.1.0'
  spec.dependency 'AppLovinMediationLineAdapter', '2.9.20250512.0'

end
