
Pod::Spec.new do |s|
  s.name         = "ShapeArtist"
  s.version      = "1.0.0"
  s.summary   = "This framework allows the user to create different shapes"
  s.homepage = "https://github.com/hema1959/ShapeArtist"
  s.license       = "MIT"
  s.author             = { "hemavenkat" => "hemavenkat59@gmail.com" }
  s.platform     = :ios, "11.0"
s.source       = { :git => "https://github.com/hema1959/ShapeArtist.git", :tag => "1.0.0"}
   s.source_files  = "ShapeArtist/**/*"
   s.framework  = "UIKit"
end
