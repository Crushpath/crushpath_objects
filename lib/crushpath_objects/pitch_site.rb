module CrushpathObjects

  class PitchSite < ActivityStreams::Service

    field :type_display_name, type: String, default: 'Pitch'
    embeds_one :visitor_action, :class_name => "CrushpathObjects::VisitorAction"

    include CrushpathObjectType

    def cta_button_text
      self.visitor_action.try(:resource_title).presence
    end

  end
end