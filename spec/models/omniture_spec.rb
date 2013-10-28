require 'spec_helper'

describe Omniture do

 it "should respond to enabled?" do 
 	Omniture.enabled?.should be_true
 end

  it "should respond to sprop_mappings" do 
 	Omniture.sprop_mappings['user_id'].should eq('prop12')
 	Omniture.sprop_mappings['page_name'].should eq('prop82')
 	Omniture.sprop_mappings['site_name'].should eq('prop26')
 	Omniture.sprop_mappings['session_id'].should eq('prop37')
 end
 
 it "should respond to application_name" do 
 	Omniture.application_name.should eq('demo-app')
 end

end

