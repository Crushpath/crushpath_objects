module CrushpathObjects

  class InvitationStats < ActivityStreams::Object
    include CrushpathObjectType

    SENT = 'Sent'
    OPENED = 'Opened'
    CLICKED = 'Clicked'
    SPAM_REPORT = 'Reported Spam'
    UNSUBSCRIBED = 'Unsubscribed'
    BOUNCED = 'Bounced'

    field :invitation_id, :type => String
    field :sent, :type => Integer
    field :opened, :type => Integer
    field :clicked, :type => Integer
    field :unsubscribed, :type => Integer
    field :spam_report, :type => Integer
    field :bounced, :type => Integer
    field :created_at, :type => Time
    field :updated_at, :type => Time, default: Time.now


    def get_stats
      {
          SENT => self.sent,
          OPENED => self.opened,
          CLICKED => self.clicked,
          SPAM_REPORT => self.spam_report,
          UNSUBSCRIBED => self.unsubscribed,
          BOUNCED => self.bounced
      }
    end
  end

end
