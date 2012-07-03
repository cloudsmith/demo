require 'spec_helper'

describe 'demo' do
  let(:facts) do
    {}
  end
  it "should contain the 'jenkins::repo::alpha' anchor" do
    should contain_anchor('jenkins::repo::alpha')
  end
  it "should contain the 'jenkins::repo::omega' anchor" do
    should contain_anchor('jenkins::repo::omega')
  end
  it "should contain the 'jenkins' package" do
    should contain_package('jenkins')
  end
  it "should contain the 'jenkins' service" do
    should contain_service('jenkins')
  end
  it "should contain the '/etc/yum.repos.d/jenkins.repo' file" do
    should contain_file('/etc/yum.repos.d/jenkins.repo')
  end
end
