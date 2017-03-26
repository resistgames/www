class HomeController < ApplicationController
  def index
    @og_url = request.original_url
    @og_title = "Resist and Code"
    @og_description = "Join the resistance and build political games"
  end
end
