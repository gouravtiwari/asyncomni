class OmnitureController < ApplicationController
  def index
    @omniture = Omniture.new(params)
    render :partial => 'omniture'
  end
end