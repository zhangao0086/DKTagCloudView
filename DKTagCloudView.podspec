Pod::Spec.new do |s|
  s.name         = "DKTagCloudView"
  s.version      = "1.0.0"
  s.summary      = "A tag clouds view on iOS.t can generate a random and not intersects coordinates."
  s.homepage     = "https://github.com/zhangao0086/DKTagCloudView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Bannings" => "zhangao0086@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/zhangao0086/DKTagCloudView.git", 
                     :tag => s.version.to_s }
  s.source_files  = "DKTagCloudView/*.{h,m}"
  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true
end
