Gem::Specification.new do |s|
  s.name        = 'solving math tasks'
  s.version     = '1.0.0'
  s.date        = '2018-11-04'

  s.summary     = "Solve some math task."
  s.description = "This gem will help you solve some math task."

  s.authors     = ["Semyz Serhii"]
  s.email       = 'semizserhii@gmail.com'

  s.files       = ["lib/feature.rb"]
  s.homepage    = 'https://github.com/SemyzSerhii/Solving-math-tasks'
  s.license = 'GPL-2.0'

  s.require_paths = ['lib']

  s.add_development_dependency 'quality_assurance', '~> 1.0.0'

  s.files = [
    'LICENSE',
    'CHANGELOG',
    'README.md',
    'Rakefile',
    'feature.gemspec',
    'lib/feature.rb',
    'test/spec.rb'
  ]

  s.test_files = [
    'test/spec.rb'
  ]

end