# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_myalbum_session',
  :secret      => 'f8dc41c12544ddbb6d2842227b63c9fbca8f2348a097145e0086c8bd7ff3c194c999bbc70b73ec8dd6cf6ab41366903e5f50628b502c5fb331cbab2153b8e77f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
