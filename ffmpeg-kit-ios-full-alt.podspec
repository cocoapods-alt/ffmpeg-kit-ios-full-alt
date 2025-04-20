Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-ios-full-alt'
  s.version          = '6.0'
  s.summary          = 'FFmpeg Kit iOS Full GPL Shared Framework'
  s.description      = <<-DESC
Includes FFmpeg with dav1d, fontconfig, freetype, fribidi, gmp, gnutls, kvazaar, lame, libass, libilbc, libtheora, libvid.stab, libvorbis, libvpx, libwebp, zimg, libxml2, opencore-amr, opus, shine, snappy, soxr, speex, twolame, vo-amrwbenc, x264, x265 and xvidcore libraries enabled.
                       DESC
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :type => 'LGPL-3.0', "file": "xcframeworks/ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE" }
  s.author           = { 'Arthenica' => 'open-source@arthenica.com' }
  s.source           = { :git => 'https://github.com/cocoapods-alt/ffmpeg-kit-ios-full-alt.git', :tag => '6.0' }
  s.preserve_paths = 'xcframeworks/**/*'
  
  s.ios.deployment_target = '15.0'
  
  s.vendored_frameworks = [
    'xcframeworks/ffmpegkit.xcframework',
    'xcframeworks/libavcodec.xcframework',
    'xcframeworks/libavdevice.xcframework',
    'xcframeworks/libavfilter.xcframework',
    'xcframeworks/libavformat.xcframework',
    'xcframeworks/libavutil.xcframework',
    'xcframeworks/libswresample.xcframework',
    'xcframeworks/libswscale.xcframework'
  ]
  
  # 依赖项，根据实际情况可能需要调整
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox'
  s.libraries = 'z', 'bz2', 'c++', 'iconv'
  
  # 配置编译选项
  s.pod_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'ENABLE_BITCODE' => 'NO',
    'VALID_ARCHS' => 'arm64 x86_64',
    'DEFINES_MODULE' => 'YES'
  }
  s.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'ENABLE_BITCODE' => 'NO'
  }
end
