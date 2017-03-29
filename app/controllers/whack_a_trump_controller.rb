class WhackATrumpController < ApplicationController
  def index
    @og_url = request.original_url
    @og_title = "Whack Donald Trump on the head"
    @og_description = "How many times can you hit Donald Trump? Try your luck in Whack-A-Trump. A Wac-A-Mole like game."
    @og_image = view_context.image_url "whack_a_trump/ogshare.png"
    @title = "Whack-A-Trump"
    @page_specific_javascript = [
      'whack_a_trump'
    ]
  end
end
