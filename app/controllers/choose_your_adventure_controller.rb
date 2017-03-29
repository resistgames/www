class ChooseYourAdventureController < ApplicationController
  def index
    @slug = params[:slug]
  end
end
