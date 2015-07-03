module CrushpathObjects

  class Opportunity < ActivityStreams::Object
    include CrushpathObjectType

    field :account_display_name
  end
end