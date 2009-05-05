# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todo-app_session',
  :secret      => '14d428881c9c9167764decd0879356e3c8a9745fc6d3cf0d37ead0ead0dd4d470fa69482739c9b7faa0c23fd53edb1647c14b629a999d84ca0a2b7a2e0b19af6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
