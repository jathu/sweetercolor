Pod::Spec.new do |spec|
  spec.name        = "Sweetercolor"
  spec.version     = "1.0.0"
  spec.license     = "MIT"
  spec.summary     = "A color extension for Swift with Photoshop blending."
  spec.homepage    = "http://jathu.me/sweetercolor/"
  spec.authors     = { "Jathu Satkunarajah" => "https://twitter.com/jathu" }
  spec.source      = { :git => "https://github.com/jathu/sweetercolor.git", :tag => spec.version }

  spec.ios.deployment_target = "9.0"
  spec.tvos.deployment_target = "9.0"
  spec.source_files = "Sweetercolor/*.swift"
  spec.requires_arc = true
  spec.pod_target_xcconfig = {
    "SWIFT_VERSION" => "3.0"
  }
end