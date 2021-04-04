if Rails.env === 'production'
  Rails.application.config.session_store:cookie_store, key: '_varre-app-backend', domain: 'varre-app-backend-json-api'
else
  Rails.application.config.session_store:cookie_store, key: '_varre-app-backend'
end
