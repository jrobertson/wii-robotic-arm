Gem::Specification.new do |s|
  s.name = 'wii-robotic-arm'
  s.version = '0.1.2'
  s.summary = 'wii-robotic-arm'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('simple_wiimote')
  s.add_dependency('robotic-arm')
end
