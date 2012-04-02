omniture_config = YAML.load(File.read(File.expand_path('../../omniture.yml', __FILE__)))[Rails.env]

Omniture.tracking_account = omniture_config["account"]
Omniture.application_name =  omniture_config["application_name"]
Omniture.sprop_mappings = omniture_config["sprop_mappings"]