# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jasmine_on_rails_example_session',
  :secret      => '5c790dfcac56e3e9979a293c81a6aad1325011f6148d84b200dacd3884c1edb6effaf8357734645a7a3b499baea2191331d15e5b188e46e5b0d84c3ed30cc69a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
