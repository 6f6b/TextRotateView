Pod::Spec.new do |s|

  s.name         = "TextRotateView"
  s.version      = "1.1"
  s.summary      = "文字轮播视图"
  s.description  = <<-DESC
      方便创建文字轮播图，类似于抖音左下方的音乐名字轮播，可实现高度自定义
                   DESC
  s.homepage     = "https://github.com/LincLiu/TextRotateView"
  s.license      = "MIT"


  s.author       = { "Feng" => "dev.liufeng@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/LincLiu/TextRotateView.git", :tag => s.version }
  s.source_files  = "TextRotateViewDemo/TextRotateView/*"
  #s.resources    = "Resources/*.{png,xib,nib,bundle}"
  s.frameworks   = "UIKit"
  s.requires_arc = true
  #s.pod_target_xcconfig = { 'SWIFT_VERSION' => '.0' }
end
