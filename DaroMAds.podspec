Pod::Spec.new do |spec|
  spec.name = 'DaroMAds'
  spec.version = '0.2.0'
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

  spec.static_framework = true
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.vendored_frameworks = 'DaroM.xcframework'

  spec.dependency 'AppLovinSDK', '13.0.0'
  spec.dependency 'AppLovinMediationFyberAdapter'
  spec.dependency 'AppLovinMediationGoogleAdapter'
  spec.dependency 'AppLovinMediationInMobiAdapter'
  spec.dependency 'AppLovinMediationIronSourceAdapter'
  spec.dependency 'AppLovinMediationVungleAdapter'
  spec.dependency 'AppLovinMediationFacebookAdapter'
  spec.dependency 'AppLovinMediationMintegralAdapter'
  spec.dependency 'AppLovinMediationMobileFuseAdapter'
  spec.dependency 'AppLovinMediationOguryPresageAdapter'
  spec.dependency 'AppLovinMediationByteDanceAdapter'
  spec.dependency 'AppLovinMediationSmaatoAdapter'
  spec.dependency 'AppLovinMediationUnityAdsAdapter'
  spec.dependency 'AppLovinMediationVerveAdapter'
  spec.dependency 'AmazonPublisherServicesSDK'
  spec.dependency 'AppLovinMediationAmazonAdMarketplaceAdapter'

end
