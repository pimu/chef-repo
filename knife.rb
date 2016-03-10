# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :debug
log_location             STDOUT
node_name                "munari"
client_key               "#{current_dir}/../.keys/munari.pem"
validation_client_name   "sixtema-validator"
validation_key           "#{current_dir}/../.keys/sixtema-validator.pem"
chef_server_url          "https://chefserver.siaer.prv/organizations/sixtema"
cookbook_path            ["#{current_dir}/cookbooks"]
trusted_certs_dir        "#{current_dir}/../.keys/trusted_certs"
