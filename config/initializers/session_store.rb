after = 1.minutes
Rails.application.config.session_store :cookie_store, key: 'uid', expire_after: after
Rails.application.config.session_store :cookie_store, key: 'name', expire_after: after 
Rails.application.config.session_store :cookie_store, key: 'email', expire_after: after
