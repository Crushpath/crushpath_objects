module CrushpathObjects

  class VisitorAction < ActivityStreams::Object
    include CrushpathObjectType
    field :resource_title, type: String
    field :resource_type, type: String
    field :event, type: String
    field :section_id, type: String
    field :ps_visitor_action_id, type: String
  end

end
