class OmnitureController < ApplicationController
  def index
    @omniture = Omniture.new(params)
    render :partial => 'omniture/send_to_omniture'
  end
end