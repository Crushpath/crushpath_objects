module CrushpathObjects

  class OpportunityDataChange < ActivityStreams::Object
    field :old_content
    include CrushpathObjectType
  end
end