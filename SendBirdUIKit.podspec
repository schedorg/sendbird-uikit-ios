Pod::Spec.new do |s|
	s.name         = "SendBirdUIKit"
	s.version      = "2.2.15"
	s.summary      = "UIKit based on SendbirdSDK"
	s.description  = "Sendbird UIKit is a framework composed of basic UI components based on SendbirdSDK."
	s.homepage     = "https://sendbird.com"
	s.documentation_url = 'https://sendbird.com/docs/uikit'
	s.license      = "Commercial"
	s.authors      = {
	"Tez" => "tez.park@sendbird.com",
	"Celine" => "celine.moon@senrbid.com",
	"Damon" => "damon.park@sendbird.com",
	"Jed" => "jed.gyeong@sendbird.com",
	"Minhyuk" => "minhyuk.kim@sendbird.com", 
	"Young" => "young.hwang@sendbird.com",
	"Kai" => "kai.lee@sendbird.com"
  	}
	s.platform     = :ios, "12.0"
	s.source = { :git => "https://github.com/schedorg/sendbird-uikit-ios.git", :branch => "bill-search-support" }
#	s.ios.vendored_frameworks = 'Framework/SendBirdUIKit.xcframework'
    s.ios.source_files = 'Sources/**/*.swift'
    s.ios.exclude_files = 'Sources/SendBirdUIKit.h', 'Sources/Info.plist'
    s.ios.resource_bundle = {'SendBirdUIKit' => ['Sources/Resource/Assets.xcassets', 'Sources/View/Common/Menu/SBUMenuCell.xib', 'Sources/View/Channel/Reaction/SBUReactionCollectionViewCell.xib']}
	s.ios.frameworks = ["UIKit", "Foundation", "CoreData", "SendBirdSDK"]
	s.requires_arc = true
	s.dependency "SendBirdSDK", ">= 3.1.39"
	s.ios.library = "icucore"
end
