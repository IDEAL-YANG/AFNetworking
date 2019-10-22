Pod::Spec.new do |s|
  s.name     = 'LXAFNetworking'
  s.version  = '3.3.1'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework. For CocoaPods 1.5.0 upgrade. Add source files.'
  s.homepage = 'https://github.com/IDEAL-YANG/AFNetworking'

  s.authors  = { 'IDEAL-YANG' => 'lxyang6688@163.com' }
  s.source   = { :git => 'https://github.com/IDEAL-YANG/AFNetworking.git', :tag => s.version.to_s }

  s.public_header_files = 'AFNetworking/*.h'
  s.source_files = 'AFNetworking/*'
  
  s.ios.deployment_target = '8.0'
  s.static_framework = true
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

end
