class HomeController < ApplicationController
  def about
    @og_url = request.original_url
    @og_title = "Join Resist Games and Fight Trump"
    @title = "About"
    @og_description = "Join the resistance and build political games"
    @og_image = view_context.image_url "ogs/resist1.jpg"
  end

  def join
    @og_url = request.original_url
    @title = "Join the Resistance"
    @og_title = "Join Resist Games and Fight Trump"
    @og_description = "Fight Trump. Join the Resistance. Build, play, and support Resist Games."
    @og_image = view_context.image_url "ogs/resist1.jpg"
  end
end
