if Rails.configuration.cache_classes
  ShopifyApp::SessionRepository.storage = Shop
else
  ActionDispatch::Reloader.to_prepare do
    ShopifyApp::SessionRepository.storage = Shop
  end
end
shop_url = "https://#{'b0bbefc12cfc771566c553a609e7a3de'}:#{'a28ce61d86395d2d2112f96c19c01845'}@mayur-demo.myshopify.com/admin"
ShopifyAPI::Base.site = shop_url

ShopifyAPI::Session.setup(api_key: 'b0bbefc12cfc771566c553a609e7a3de', secret: '8a8a67692cc2eb112220bec445f9047f')
