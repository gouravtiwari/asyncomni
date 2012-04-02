class Omniture
  def initialize(params)
    @params = params
  end

  # read attributes from the params or return blank if not availabled.
  def method_missing(method)
    if @params.include?(method.to_s)
      @params[method.to_s]
    else
      ''
    end
  end

  class << self
    attr_accessor :sprop_mappings, :application_name, :tracking_account

    def override
      @override_configuration ||= {}
    end

    def validate!
      raise NotConfiguredException,'The sprops mappings need to be configured for this application before enabling tracking. See Omniture.sprop_mappings' if sprop_mappings.nil?
      raise NotConfiguredException,'A tracking account must be specified for omniture to report usage. See Omniture.tracking_account' if tracking_account.nil?
      raise NotConfiguredException,'An application account must be specified for omniture to report usage. See Omniture.application_name' if application_name.nil?
    end

    def sprop_for property
      sprop = sprop_mappings[property]

      Exception.log_and_raise("No sprop has been configured for enabling tracking of #{property}") do
        raise(NotConfiguredException)
      end if sprop.nil?

      return sprop.to_s
    end
  end

  class EventType
    DOWNLOAD = 'd'
    EXIT = 'e'
    LINK = 'e'
    CUSTOM = 'o'
  end

end