Pod::Spec.new do |s|
    s.name         = 'XLBottomMultiPurposeView'
    s.version      = '1.0.0'
    s.description = <<-DESC

                   一个类似微博底部分享组件的小框架

                   DESC
    s.summary      = 'A simple module like SinaWeibo bottom share view!'
    s.homepage     = 'https://github.com/CoderXLLau/XLBottomMutiplePurposeView'
    s.license      = 'MIT'
    s.authors      = {'CoderXLLau' => '2604156181@qq.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/CoderXLLau/XLBottomMutiplePurposeView.git', :tag => s.version}
    s.source_files = 'XLBottomMultiPurposeView/*'
    spec.resource = 'Resources/*.xib'
    s.framework    = 'UIKit'
    s.requires_arc = true
end

