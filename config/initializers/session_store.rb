# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sirena_session',
  :secret      => '2d4211d99caec3646b6349087d6051cda2cf3ba2042a0f7024bc6102ca138cea0417cae393105ecddf776003e78868d097bfaca7e064641827f9fa273d0bce58'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
