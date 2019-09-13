Pod::Spec.new do |s|
  s.name            = "YKUpDownIndicator"
  s.version         = "0.2"
  s.summary         = "UpDown Activity Indicator that display the progress of an ongoing task on iOS"
  s.description     = "YKUpDownIndicator is a clean and easy-to-use Activity Indicator meant to display the progress of an ongoing task on iOS."
  s.homepage        = "https://github.com/yojkim/YKUpDownIndicator"
  s.license         = { :type => "MIT", :file => "LICENSE" }
  s.author          = { "yojkim" => "youthful2016@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source          = { :git => "https://github.com/yojkim/YKUpDownIndicator.git", :tag => s.version.to_s }
  s.source_files    = "YKUpDownIndicator/**/*"
  s.swift_version   = '5.0'
  s.source_files    = "YKUpDownIndicator/**/*"
  s.exclude_files   = "YKUpDownIndicator/**/*.plist"
end
