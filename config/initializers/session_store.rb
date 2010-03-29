# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_jquery-autocomplete_session',
  :secret => '91ba955f2a3f4f44333a02676291ab0a98c37e32c8a8cce3f5c61103c3a04768ad1f488c8a3333120a871df5ba535482558fc2157f5d81260a705bfecc472b0b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
