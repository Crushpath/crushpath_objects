module CrushpathObjects

  class PromotionMessage < CrushpathObjects::Message
    include CrushpathObjectType
    include Mongoid::Timestamps

    field :public, :type => Boolean, :default => false
    field :audience_size, :type => Integer
  end
end