Pod::Spec.new do |spec|

  spec.name         = "CCWATextField"
  spec.version      = "0.0.8"
  spec.summary      = "CCWATextField"
  spec.description  = <<-DESC
  CCWATextField
                   DESC
  
  spec.homepage     = "https://github.com/AnandKhanpara/CCWATextField"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Anand Khanpara" => "anandkhanpara111@gmail.com" }
  spec.ios.deployment_target = "12.0"
  spec.swift_version = "5"
  spec.source       = { :git => "https://github.com/AnandKhanpara/CCWATextField.git", :tag => "#{spec.version}" }
  spec.source_files  = "CCWATextField/**/*.{h,m,swift}"

end
