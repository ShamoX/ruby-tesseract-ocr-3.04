Kernel.load 'lib/tesseract/version.rb'

Gem::Specification.new {|s|
	s.name     = 'tesseract-ocr-3.04'
	s.version  = Tesseract.version
	s.author   = ['meh.', 'ortutay', 'ShamoX']
	s.email    = ['meh@schizofreni.co', 'roland@rlaures.pro']
	s.homepage = 'https://github.com/ShamoX/ruby-tesseract-ocr'
	s.platform = Gem::Platform::RUBY
	s.summary  = 'A wrapper library to the tesseract-ocr API.'
	s.license  = 'BSD'

	s.files         = `git ls-files`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.require_paths = ['lib']

	s.add_dependency 'call-me'
	s.add_dependency 'iso-639'

	s.add_dependency 'ffi-extra'
	s.add_dependency 'ffi-inline'
}
