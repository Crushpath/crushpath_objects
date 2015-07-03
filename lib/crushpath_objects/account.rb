module CrushpathObjects

  class Account < ActivityStreams::Person
    include CrushpathObjectType

    field :tenant
  end
end