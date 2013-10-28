if File.exists?("#{Rails.root}/config/omniture.yml")
  omniture_config = YAML.load_file("#{Rails.root}/config/omniture.yml")[Rails.env]
  Omniture.tracking_account = omniture_config["account"]
  Omniture.application_name =  omniture_config["application_name"]
  Omniture.sprop_mappings = omniture_config["sprop_mappings"]
  Omniture.enabled = omniture_config["enabled"]
end