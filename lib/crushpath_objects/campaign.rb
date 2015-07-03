module CrushpathObjects

  class Campaign < ActivityStreams::Object
    include CrushpathObjectType

    field :details, :type => Hash
  end
end