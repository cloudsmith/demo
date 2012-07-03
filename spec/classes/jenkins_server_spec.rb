require 'spec_helper'

describe 'jenkins_server' do
  it "should include the 'jenkins' class" do
    should include_class('jenkins')
  end
end
