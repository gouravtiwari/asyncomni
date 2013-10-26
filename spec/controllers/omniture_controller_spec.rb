require File.dirname(__FILE__) + '/../spec_helper'

describe OmnitureController do
  describe "on GET to index action" do
    it "should render omniture template" do
      get :index

      response.should be_success
      response.should render_template("omniture/_send_to_omniture")
      assigns[:omniture].should_not be_nil
    end
  end
end