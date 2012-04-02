module OmnitureHelper
  def omniture_url    
    url = omniture_index_url
    param_pair = omniture_trackable_properties.collect{|p| omniture_query_param(p)}
    "#{url}?#{param_pair.join('&')}"
  end

  def omniture_trackable_properties
    [:page_name, :user_id, :application_name]
  end

  def omniture_query_param(prop)
    "#{prop}=#{self.send(prop)}"
  end

  def application_name
    Omniture.application_name
  end

  def user_id
    current_user.id
  end
  
  def page_name
    name = []
    name << application_name
    name << (@metric.nil? ? page_name_by_url : @metric.code)
    name.join('_')
  end

  def page_name_by_url
    name = []
    name << controller_name.gsub('/','_').camelize if (controller_name != 'report')
    if (action_name == 'index' && controller_name == 'report')
      name << 'Offshore' 
    else
      name << action_name.gsub('/','_').camelize
    end
    name.join('_')
  end

  def omniture_formatted_time
    Time.now.strftime('%m/%d/%Y %I:%M:%S %p')
  end
end