Pod::Spec.new do |s|
s.name         = 'KRE-LFMediaEditingController'
s.version      = '2.0.3'
s.summary      = 'Media Editor (edit photo、edit video)'
s.homepage     = 'https://github.com/smithkre/LFMediaEditingController'
s.license      = 'MIT'
s.author       = { 'Smith Krengkrud' => 'smith.kre@gmail.com' }
s.platform     = :ios
s.ios.deployment_target = '7.0'
s.source       = { :git => 'https://github.com/smithkre/LFMediaEditingController.git', :tag => s.version, :submodules => true }
s.requires_arc = true
s.source_files = 'LFMediaEditingController/class/*.{h,m}'
s.public_header_files = 'LFMediaEditingController/class/*.h'

# LFPhotoEditingController模块
s.subspec 'LFPhotoEditingController' do |ss|
ss.resources    = 'LFMediaEditingController/class/common/*.bundle'
ss.source_files = 'LFMediaEditingController/class/*.{h,m}','LFMediaEditingController/class/LFPhotoEditingController/**/*.{h,m}','LFMediaEditingController/class/common/**/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/*.h','LFMediaEditingController/class/LFPhotoEditingController/controller/*.h','LFMediaEditingController/class/LFPhotoEditingController/model/*.h'
ss.dependency 'LFMediaEditingController/JRPickColorView'
ss.dependency 'LFMediaEditingController/JRFilterBar'
ss.dependency 'LFMediaEditingController/LFColorMatrix'
ss.dependency 'LFMediaEditingController/LFFilterSuite'
ss.dependency 'LFMediaEditingController/LFMediaDisplayView'
end

# LFVideoEditingController模块
s.subspec 'LFVideoEditingController' do |ss|
ss.resources    = 'LFMediaEditingController/class/common/*.bundle'
ss.source_files = 'LFMediaEditingController/class/*.{h,m}','LFMediaEditingController/class/LFVideoEditingController/**/*.{h,m}','LFMediaEditingController/class/common/**/*.{h,m}','LFMediaEditingController/class/LFPhotoEditingController/view/model/*.{h,m}','LFMediaEditingController/class/LFPhotoEditingController/view/other/**/*.{h,m}','LFMediaEditingController/class/LFPhotoEditingController/view/subView/*.{h,m}','LFMediaEditingController/class/LFPhotoEditingController/view/toolBar/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/*.h','LFMediaEditingController/class/LFVideoEditingController/controller/*.h','LFMediaEditingController/class/LFVideoEditingController/model/*.h'
ss.dependency 'LFMediaEditingController/JRPickColorView'
ss.dependency 'LFMediaEditingController/JRFilterBar'
ss.dependency 'LFMediaEditingController/LFColorMatrix'
ss.dependency 'LFMediaEditingController/LFFilterSuite'
ss.dependency 'LFMediaEditingController/LFMediaDisplayView'
end

# JRPickColorView模块
s.subspec 'JRPickColorView' do |ss|
ss.source_files = 'LFMediaEditingController/class/vendors/JRPickColorView/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/vendors/JRPickColorView/JRPickColorView.h'
end

# JRFilterBar模块
s.subspec 'JRFilterBar' do |ss|
ss.source_files = 'LFMediaEditingController/class/vendors/JRFilterBar/*.{h,m}','LFMediaEditingController/class/vendors/JRFilterBar/**/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/vendors/JRFilterBar/JRFilterBar.h'
end

# LFColorMatrix模块
s.subspec 'LFColorMatrix' do |ss|
ss.source_files = 'LFMediaEditingController/class/vendors/ColorMatrix/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/vendors/ColorMatrix/*.h'
end

# LFFilterSuite模块
s.subspec 'LFFilterSuite' do |ss|
ss.source_files = 'LFMediaEditingController/class/vendors/LFFilterSuite/*.{h,m}','LFMediaEditingController/class/vendors/LFFilterSuite/**/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/vendors/LFFilterSuite/*.h','LFMediaEditingController/class/vendors/LFFilterSuite/**/*.h'
end

# LFMediaDisplayView模块
s.subspec 'LFMediaDisplayView' do |ss|
ss.source_files = 'LFMediaEditingController/class/vendors/LFMediaDisplayView/*.{h,m}','LFMediaEditingController/class/vendors/LFMediaDisplayView/**/*.{h,m}'
ss.public_header_files = 'LFMediaEditingController/class/vendors/LFMediaDisplayView/*.h'
ss.resources = 'LFMediaEditingController/class/vendors/LFMediaDisplayView/resource/*.bundle'
end

end
