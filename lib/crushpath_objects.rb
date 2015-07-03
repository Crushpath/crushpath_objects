require "crushpath_objects/version"
require 'mongoid'
require 'activity_streams'
require 'crushpath_object_type'
require "crushpath_objects/account"
require "crushpath_objects/buyer"
require "crushpath_objects/buyers"
require "crushpath_objects/campaign"
require "crushpath_objects/deal_site"
require "crushpath_objects/email"
require "crushpath_objects/endorsement"
require "crushpath_objects/feedback"
require "crushpath_objects/file"
require "crushpath_objects/influence_label"
require "crushpath_objects/introduction"
require "crushpath_objects/invitation_stats"
require "crushpath_objects/label"
require "crushpath_objects/message"
require "crushpath_objects/opportunity"
require "crushpath_objects/opportunity_buying_member"
require "crushpath_objects/opportunity_data_change"
require "crushpath_objects/organization"
require "crushpath_objects/organization_team"
require "crushpath_objects/personality_label"
require "crushpath_objects/photo"
require "crushpath_objects/pitch_site"
require "crushpath_objects/promotion_message"
require "crushpath_objects/request"
require "crushpath_objects/seller"
require "crushpath_objects/selling_team"
require "crushpath_objects/tenant"
require "crushpath_objects/visitor_action"

module CrushpathObjects
  class << self
    attr_accessor :organization_default_url

    def configure(&block)
      yield self
    end
  end

end
