require File.dirname(__FILE__) + '/../spec_helper'

describe OmnitureController do
  describe "on GET to index action" do
    it "should render omniture template when logged in user is Admin" do
      do_login_as_admin

      get :index

      response.should be_success
      response.should render_template("omniture/_omniture")
      assigns[:omniture].should_not be_nil
    end

    it "should render omniture template when logged in user normal user" do
      do_login

      get :index

      response.should be_success
      response.should render_template("omniture/_omniture")
      assigns[:omniture].should_not be_nil
    end
  end
end