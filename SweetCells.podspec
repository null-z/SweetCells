Pod::Spec.new do |s|
  s.name             = 'SweetCells'
  s.version          = '0.1.0'
  s.summary          = 'Forget about register and type casting of UITableViewCells'
  s.description      = <<-DESC
SweetCells is a little syntactic sugar for those who use custom UITableViewCell in xib in their projects. SweetCells will not allow you to make a mistake with the identifier of the cell and nibName, and dequeueReusableCell will immediately return to you the cell of the desired class.
                       DESC

  s.homepage         = 'https://github.com/null-z/SweetCells'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'null-z' => 'null-z@mail.ru' }
  s.source           = { :git => 'https://github.com/null-z/SweetCells.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files  = ['SweetCells/**/*.swift', "SweetCells/SweetCells.h"]
  s.public_header_files = ['SweetCells/SweetCells.h']
  
  # s.frameworks = 'UIKit'
  s.requires_arc = true

end
