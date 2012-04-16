class Omniture
  def initialize(params)
    @params = params
  end

  # read attributes from the params or return blank if not available.
  def method_missing(method)
    if @params.include?(method.to_s)
      @params[method.to_s]
    else
      ''
    end
  end

  class << self
    attr_accessor :sprop_mappings, :application_name, :tracking_account

    def sprop_for property
      sprop = sprop_mappings[property]

      Exception.log_and_raise("No sprop has been configured for enabling tracking of #{property}") do
        raise(NotConfiguredException)
      end if sprop.nil?

      return sprop.to_s
    end
  end
end