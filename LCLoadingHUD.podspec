Pod::Spec.new do |s|

  s.name         = "LCLoadingHUD"
  s.version      = "1.0.2"
  s.summary      = "A cool loading HUD. Support: http://www.leodong.com"
  s.homepage     = "https://github.com/LeoiOS/LCLoadingHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "leoios@sina.com" }
  s.social_media_url   = "http://www.leodong.com"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/LeoiOS/LCLoadingHUD.git", :tag => s.version }
  s.source_files  = "LCLoadingHUD/*"
  s.requires_arc = true

end
