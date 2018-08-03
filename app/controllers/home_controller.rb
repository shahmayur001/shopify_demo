class HomeController < ShopifyApp::AuthenticatedController
  
  def index
  	# @session = ShopifyAPI::Session.new("mayur-demo.myshopify.com", "13ca0489b49240d6ec021eea1948149b")
  	# @scope = ["write_orders"]
  	# shop_url = "https://#{'b0bbefc12cfc771566c553a609e7a3de'}:#{'a28ce61d86395d2d2112f96c19c01845'}@mayur-demo.myshopify.com/admin"
  	# ShopifyAPI::Base.site = shop_url

  	# @permission_url = @session.create_permission_url(@scope)
  	# laste = ShopifyAPI::Base.activate_session(@session)
  	# puts "-------------------#{laste}"
    @products = ShopifyAPI::Order.find(:all, params: { created_at_min: (Time.now - 30.days), limit: 250 })
  end

  def create_order
  	  # process shopify order here: all info in `params`
  end

  def new
    @product =  Order.new
  end

  def create 
        order = ShopifyAPI::Order.new(
	       "line_items": [
          {
            "title": params[:order][:title],
            "note": "Broke in shipping",
            "price": params[:order][:price],
            "grams": "1300",
            "quantity": params[:order][:quantity],
            "sku": "IPOD-342-N",
            "tax_lines": [
              {
                "price": 13.5,
                "rate": 0.06,
                "title": "State tax"
              }
            ]
          }
        ],
        "transactions": [
          {
            "kind": "sale",
            "status": "success",
            "amount": 238.47
          }
        ],
        "note": params[:order][:note],
        "total_tax": 13.5,
        "currency": "EUR"
      
     )
     
     order.save
     redirect_to root_path
  

   end

end
