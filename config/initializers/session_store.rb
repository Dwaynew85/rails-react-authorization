if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "YOUR-DOMAIN-NAME"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end