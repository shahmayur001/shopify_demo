ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "b0bbefc12cfc771566c553a609e7a3de"
  config.secret = "8a8a67692cc2eb112220bec445f9047f"
  config.scope = 'read_customers, read_orders, write_products,write_orders'
  config.embedded_app = false
  config.webhooks = [
    {topic: 'carts/update', address: 'http://eb9c5efa.ngrok.io/webhooks/carts_update', format: 'json'},
  ]
end
