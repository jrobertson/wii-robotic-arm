Gem::Specification.new do |s|
  s.name = 'wii-robotic-arm'
  s.version = '0.1.5'
  s.summary = 'wii-robotic-arm'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('simple_wiimote')
  s.add_dependency('robotic-arm') 
  s.signing_key = '../privatekeys/wii-robotic-arm.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/wii-robotic-arm'
end
