Gem::Specification.new do |s|
  s.name        = 'fizz_buzz_dillonhafer'
  s.version     = '1.0.2'
  s.date        = '2014-10-02'
  s.summary     = "FizzBuzz Kata!"
  s.description = "FizzBuzz"
  s.authors     = ["Dillon Hafer"]
  s.email       = 'dh@dillonhafer.com'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage    =
    'https://github.com/thealtair/fizz-buzz'
  s.license       = 'MIT'
  s.require_paths = ["lib"]
  s.add_development_dependency 'rspec', '~> 3.1.0', '>= 3.1.0'
end
