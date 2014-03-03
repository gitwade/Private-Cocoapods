Pod::Spec.new do |s|
  s.name             = "BibleTriviaApiSDK"
  s.version          = "1.0.0"
  s.summary          = "BibleTriviaApiSDK is an iOS SDK to aid in the use of the Bible Trivia RESTful web service API."
  s.description      = <<-DESC
                       BibleTriviaApiSDK is an iOS SDK to aid in the use of the Bible Trivia RESTful web service API.
                       An API key is required to use this service.
                       The API key, the API end point, and documentation are available for permitted users from Salem Web Network.
                       DESC
  s.homepage         = "http://www.salemwebnetwork.com/"
  s.license          = 'Proprietary'
  s.author           = { "wade.simmons" => "wade.simmons@salemwebnetwork.com" }
  s.source           = { :svn => "https://svn.salemweb.net/svn/salem-iphone/BibleTriviaApiSDK", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.ios.source_files = 'Classes/ios/BibleTriviaApiSDK/*.{h,m}'
  s.exclude_files = "Classes/**/KeychainItemWrapper.{h,m}"
  s.resources = 'Assets'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'AFNetworking', '~> 2.0'
  s.dependency 'Mantle', '~> 1.0'
  s.dependency 'FMDB', '~> 2.0'
  s.dependency 'Facebook-iOS-SDK', '~> 3.0'

  s.subspec "Model" do |mdl|
    mdl.platform     = :ios, '7.0'
    mdl.requires_arc = true
    mdl.ios.source_files = "Classes/ios/BibleTriviaApiSDK/Model/*.{h,m}"
    mdl.public_header_files = 'Classes/**/*.h'

    mdl.subspec "Resource" do |rsrc|
      rsrc.platform     = :ios, '7.0'
      rsrc.requires_arc = true
      rsrc.ios.source_files = "Classes/ios/BibleTriviaApiSDK/Model/Resource/*.{h,m}"
      rsrc.public_header_files = 'Classes/**/*.h'
    end

    mdl.subspec "Response" do |rspns|
      rspns.platform     = :ios, '7.0'
      rspns.requires_arc = true
      rspns.ios.source_files = "Classes/ios/BibleTriviaApiSDK/Model/Response/*.{h,m}"
      rspns.public_header_files = 'Classes/**/*.h'
    end
  end

  s.subspec "KeychainAccess" do |ka|
    ka.platform     = :ios, '7.0'
    ka.frameworks = 'Security'
    ka.requires_arc = false
    ka.source_files = "Classes/**/KeychainItemWrapper.{h,m}"
  end
end
