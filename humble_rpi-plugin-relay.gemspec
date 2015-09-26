Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-relay'
  s.version = '0.1.0'
  s.summary = 'Control 1 or more relays with the Raspberry Pi using the Humble_rpi gem + humble_rpi-plugin-relay gem.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-relay.rb']
  s.add_runtime_dependency('rpi', '~> 0.4', '>=0.4.0')
  s.signing_key = '../privatekeys/humble_rpi-plugin-relay.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-relay'
end
