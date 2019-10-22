Pod::Spec.new do |s|
  s.name     = 'LXAFNetworking'
  s.version  = '3.3.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework.For CocoaPods 1.5.0 upgrade.'
  s.homepage = 'https://github.com/IDEAL-YANG/AFNetworking'

  s.authors  = { 'IDEAL-YANG' => 'lxyang6688@163.com' }
  s.source   = { :git => 'https://github.com/IDEAL-YANG/AFNetworking.git', :tag => s.version }

  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.public_header_files = 'AFNetworking/AFNetworking.h'
  s.source_files = 'AFNetworking/AFNetworking.h'
  
  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif

#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif

#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  s.prefix_header_contents = pch_AF
  
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
end
