module CrushpathObjects
  class Organization < ActivityStreams::Group
    include CrushpathObjectType

    embeds_many :locations, :class_name => "ActivityStreams::Place"

      # For compatibility
      def avatar_url
        image ? image.url : CrushpathObjects.organization_default_url
      end

      # For compatibility
      def avatar_thumb_url
        avatar_url
      end
  end
end