Pod::Spec.new do |s|
s.name             = 'RPFramework'
s.version          = '0.9.2'
s.summary          = 'The RedPanda Framework.'

s.description      = <<-DESC
Hassle-free boilerplate and featureful framework for your iOS apps
DESC

s.homepage         = 'https://github.com/RedP4nda/RPFramework'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'MrCloud' => 'florianp37@me.com' }
s.source           = { :git => 'https://github.com/RedP4nda/RPFramework.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/Florian_MrCloud'

s.ios.deployment_target = '9.0'
s.source_files = 'RPFramework/Classes/Core/**/*'
s.default_subspec = 'Core'

s.subspec 'Core' do |a|
a.source_files = 'RPFramework/Classes/Core/**/*'
a.dependency 'PluggableApplicationDelegate'
end

end
