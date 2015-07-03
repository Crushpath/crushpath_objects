require 'spec_helper'

describe CrushpathObjects::Organization do

  before do
    CrushpathObjects.configure do |config|
      config.organization_default_url = "organization_default.png"
    end
    @org = CrushpathObjects::Organization.new(:display_name => 'Cool org')
  end

  it "should have default thumbnail" do
    @org.avatar_url.should_not be_nil
    expect(@org.avatar_url).to eq("organization_default.png")
  end

  it "should return non-default thumbnail if specified" do
    @org.image = ActivityStreams::MediaItem.new(:url => 'some_org_avatar.jpg', :media_type => :image)
    @org.avatar_url.should_not be_nil
    @org.avatar_url.should_not =~ /default.png$/
    @org.avatar_url.should =~ /some_org_avatar.jpg$/
  end
end