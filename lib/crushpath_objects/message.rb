module CrushpathObjects

  class Message < ActivityStreams::Note
    include CrushpathObjectType
  end
end