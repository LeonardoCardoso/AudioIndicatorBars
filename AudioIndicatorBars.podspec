Pod::Spec.new do |s|

	s.ios.deployment_target = '9.0'
    s.tvos.deployment_target    = '9.0'
	s.name = "AudioIndicatorBars"
	s.summary = "Indicates for your app users which audio is playing."
	s.requires_arc = true
	s.version = "0.0.1"
	s.license = { :type => "MIT", :file => "LICENSE" }
	s.author = { "Leonardo Cardoso" => "contact@leocardz.com" }
	s.homepage = "https://github.com/LeonardoCardoso/AudioIndicatorBars"
	s.source = { :git => "https://github.com/LeonardoCardoso/AudioIndicatorBars.git", :tag => s.version }
	s.source_files = "Sources/**/*.swift"

end