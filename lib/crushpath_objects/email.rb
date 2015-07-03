module CrushpathObjects

  class Email < ActivityStreams::Object
    include CrushpathObjectType

    field :recipient, :type => String
    field :sent_date, :type => DateTime

    embeds_many :recipients, :class_name => "ActivityStreams::Person"

    def recipients_str
      if recipients and recipients.count > 0
        recipients.collect{ |r| r.display_name }.join(',')
      else
        recipient
      end
    end

    attr_accessor :subject, :body

    def subject
      read_attribute(:summary) || read_attribute(:subject)
    end

    def subject=(value)
      write_attribute(:summary, value)
    end

    def body
      read_attribute(:content) || read_attribute(:content)
    end

    def body=(value)
      write_attribute(:content, value)
    end

    def uid
      read_attribute(:UID)
    end

    def uid=(value)
      write_attribute(:UID, value)
    end
  end
end
