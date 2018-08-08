Pod::Spec.new do |s|
    s.name             = 'EasyStyle'
    s.version          = '0.0.2'
    s.summary          = 'Easy maintain styles in project'
    s.description      = 'A powerful tool for maintain styles in project'
    s.homepage         = 'https://github.com/0ber/EasyStyle'
    s.license          = 'MIT'
    s.author           = 'Alex Kalinkin'
    s.social_media_url = 'https://twitter.com/KalinkinAleksey'
    s.source           = { :git => 'https://github.com/0ber/EasyStyle.git', :tag => s.version.to_s }
    s.swift_version    = '4.0'

    s.ios.deployment_target = '10.0'

    s.source_files  = 'Source/**/*'
end
