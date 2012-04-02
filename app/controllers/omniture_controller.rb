class OmnitureController < ApplicationController
  skip_filter :authorize!, :only => [:index]
  def index
    @omniture = Omniture.new(params)
    render :partial => 'omniture'
  end
end