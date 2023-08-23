Pod::Spec.new do |spec|
  spec.name         = "Down"
  spec.summary      = "Blazing fast Markdown rendering in Swift, built upon cmark."
  spec.version      = "1.0.0"
  spec.homepage     = "https://github.com/Topsecret-network/Down"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.authors      = { "Rob Phillips" => "rob@robphillips.me" }
  spec.source       = { :git => "https://github.com/Topsecret-network/Down.git", :tag => "v" + spec.version.to_s }
  spec.source_files = "Source/{cmark,Enums & Options,Extensions,Renderers,Style,AttributeParser,AST}/**", "Source/*"
  spec.ios.source_files = "Source/Views/**"
  spec.public_header_files = "Source/*.h"
  spec.ios.deployment_target = "8.0"
  spec.requires_arc = true
  spec.module_name = "Down"
  spec.preserve_path = 'Source/cmark/module.modulemap'
  spec.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/Down/Source/cmark/**' }
  spec.ios.resource = 'Resources/DownView.bundle'
  spec.osx.resource = 'Resources/DownView.bundle'
  spec.vendored_frameworks = [
    'libcmark.xcframework',
  ]
end
