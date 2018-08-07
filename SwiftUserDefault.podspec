Pod::Spec.new do |s|
  s.name         = "SwiftUserDefault"
  s.version      = "0.0.2"
  s.summary      = "SwiftUserDefaults wrap NSUserDefaults, easy to use"
  s.description  = <<-DESC
  SwiftUserDefaults is a wrapper, with it you can't use it as easy as you can, just like the Notification declear.
                   DESC

  s.homepage     = "https://github.com/looseyi/SwiftUserDefaults"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Edmond" => "chun574271939@gmail.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/looseyi/SwiftUserDefaults.git", :tag => s.version }
  s.source_files  = "Source", "Source/**/*.{swift}"
end
