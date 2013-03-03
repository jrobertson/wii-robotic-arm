Gem::Specification.new do |s|
  s.name = 'wii-robotic-arm'
  s.version = '0.1.4'
  s.summary = 'wii-robotic-arm'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('simple_wiimote')
  s.add_dependency('robotic-arm') 
  s.signing_key = '../privatekeys/wii-robotic-arm.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
