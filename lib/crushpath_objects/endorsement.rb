module CrushpathObjects

  class Endorsement < ActivityStreams::Object
    include CrushpathObjectType

    field :reference_id, :type => String
    field :body, :type => String
    field :name, :type => String
    field :organization, :type => String
    field :approved, type: Boolean

    def endorser_details
      parts = [self.name]
      parts << self.organization if self.organization.present?
      parts.join(', ')
    end
  end

end
