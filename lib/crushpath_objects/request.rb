module CrushpathObjects

  class Request < ActivityStreams::Object
    include CrushpathObjectType

    field :method, :type => String
    field :first_user_experience, :type => Boolean, :default => false

  end
end
