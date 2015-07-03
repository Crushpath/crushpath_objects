module CrushpathObjects
  class Tenant < ActivityStreams::Group
    include CrushpathObjectType

    # For compatibility
    def avatar_url
      image ? image.url : AvatarUploader.organization_default_url
    end

    # For compatibility
    def avatar_thumb_url
      avatar_url
    end
  end
end