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

  s.source_files = 'Classes/**/*.{h,m}'
  s.exclude_files = "Classes/**/KeychainItemWrapper.{h,m}"
  s.resources = 'Assets'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'AFNetworking', '~> 2.0'
  s.dependency 'Mantle', '~> 1.0'
  s.dependency 'FMDB', '~> 2.0'
  s.dependency 'Facebook-iOS-SDK', '~> 3.0'

  s.subspec "KeychainAccess" do |sp|
    sp.platform     = :ios, '7.0'
    sp.frameworks = 'Security'
    sp.requires_arc = false
    sp.source_files = "Classes/**/KeychainItemWrapper.{h,m}"
  end
end