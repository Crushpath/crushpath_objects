module CrushpathObjectType

  def object_type
    self.class.to_s.gsub("CrushpathObjects::", "").downcase.to_sym
  end
end