class ChooseYourAdventureController < ApplicationController
  def index
    @slug = params[:slug]
    @no_container = true
    @page_specific_javascript = [
      'choose_your_adventure'
    ]
  end
end
