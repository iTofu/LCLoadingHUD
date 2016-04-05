Pod::Spec.new do |s|

  s.name         = "LCLoadingHUD"
  s.version      = "1.0.6"
  s.summary      = "A cool loading HUD. Support: http://LeoDev.me"
  s.homepage     = "https://github.com/iTofu/LCLoadingHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "devtip@163.com" }
  s.social_media_url   = "http://LeoDev.me"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/iTofu/LCLoadingHUD.git", :tag => s.version }
  s.source_files = "LCLoadingHUD/*"
  s.requires_arc = true

end
