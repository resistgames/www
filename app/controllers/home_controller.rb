class HomeController < ApplicationController
  def index
    @og_url = request.original_url
    @og_title = "Resist and Code"
    @og_description = "Join the resistance and build political games"
  end

  def about
    @og_url = request.original_url
    @og_title = "Resist and Code"
    @title = "About"
    @og_description = "Join the resistance and build political games"
  end

  def join
    @og_url = request.original_url
    @title = "Join the Resistance"
    @og_description = "Fight Trump. Join the Resistance. Build, play, and support Resist Games."
  end
end
