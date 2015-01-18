# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# SampleApp::Application.config.secret_key_base = '3b732b539540eeffb60e4f36f56c6f5a6e68a66496d1b84d778d25c4422cf7a5b7ad252f411bf1e753269be9effed9ff35a4bd8c8b56b365318b87a873e49e9b'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
  	# Use the existing token.
  	File.read(token_file).chomp
  else
  	# Generate a new token and store it in token_file.
  	token = SecureRandom.hex(64)
  	File.write(token_file, token)
  	token
  end
end

SampleApp::Application.config.secret_key_base = secure_token