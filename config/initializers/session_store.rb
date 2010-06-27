# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_isocele_session',
  :secret      => '9ec97cbc13f8d5eb9b6e56e2e77b96a35d1189efecbe8700f13dc4ca0b37b6776b8ec7a703ae1166283ff408034fd20f2988e0ff6205f343b808ab9797bee60f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
