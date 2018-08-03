class AppProxyController < ApplicationController
   # include ShopifyApp::AppProxyVerification
    skip_before_action :verify_authenticity_token, raise: false

  def index
  	puts "---#{request.body.read}"
    # render layout: false, content_type: 'application/liquid'
  end

end
