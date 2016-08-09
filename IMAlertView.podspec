Pod::Spec.new do |s|
  s.name         = "IMAlertView"
  s.version      = "1.0.0"
  s.summary      = "iOS custom alert view."
  s.homepage     = "https://github.com/imilakovic/IMAlertView"
  s.license      = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  s.author       = {
    "Igor Milakovic" => "igor.milakovic@gmail.com"
  }
  s.platform     = :ios, '7.0'
  s.source       = {
    :git => "https://github.com/imilakovic/IMAlertView.git",
    :tag => "v1.0.0"
  }
  s.source_files = 'IMAlertView', 'IMAlertView/**/*.{h,m}'
  s.requires_arc = true
end
