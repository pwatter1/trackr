Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '129306414419402', '8daa8d8e8e28a7ebe1cc52b37a07b597'
end