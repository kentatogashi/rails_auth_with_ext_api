after = 1.minutes
Rails.application.config.session_store :cookie_store, key: 'email', expire_after: after
