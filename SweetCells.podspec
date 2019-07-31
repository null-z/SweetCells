Pod::Spec.new do |s|
  s.name             = 'SweetCells'
  s.version          = '0.1.0'
  s.summary          = 'Forget about register and type casting of UITableViewCell's'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/null-z/SweetCells'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'null-z' => 'null-z@mail.ru' }
  s.source           = { :git => 'https://github.com/null-z/SweetCells.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SweetCells/SweetCells/**/*'
  
  # s.frameworks = 'UIKit'
end
