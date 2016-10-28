#
# Cookbook Name:: bpoint-generator
# Recipe:: bpoint
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# in attesa di capire come fare ad usare directory di recipe
node.normal['currentdir']['root'] = "C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\bpoint-generator"

node.normal['lastdesiredrelease'] = {
	'version' => "16.30.00",
	'versioncode' => "xyzbcd"
}

node.normal['release_list'] = ['16.10.20','16.10.40','16.20.00','16.20.10','16.20.20','16.30.00','16.40.20','16.50.00']
node.normal['release_list_complex'] = [
	{'version' => '16.10.20', 'versioncode' => "xyza12"},
	{'version' => '16.10.40', 'versioncode' => "xyzab2"},
	{'version' => '16.20.00', 'versioncode' => "xyzabc"},
	{'version' => '16.20.10', 'versioncode' => "xyzb12"},
	{'version' => '16.20.20', 'versioncode' => "xyzbc3"},
	{'version' => '16.30.00', 'versioncode' => "xyzbcd"},
	{'version' => '16.40.00', 'versioncode' => "xyzbc1"},
	{'version' => '16.40.10', 'versioncode' => "xyzbc2"},
	{'version' => '16.40.20', 'versioncode' => "xyzbce"},
	{'version' => '16.50.00', 'versioncode' => "xyzbcf"}
]



directory "#{node['currentdir']['root']}/target/bpoint/files/recipes" do
	recursive true
	action :create
end


# to delete only last single recipe
template "#{node['currentdir']['root']}/target/bpoint/files/recipes/release-#{node['lastdesiredrelease']['version']}-single.rb" do
	source "bpoint/recipes-last.rb.erb"
	action :delete
end

# # to create only last single recipe
# template "#{node['currentdir']['root']}/target/files/recipes/release-#{node['lastdesiredrelease']['version']}-single.rb" do
#   source "recipes-last.rb.erb"
#   variables({
#
# 	:recipe => node['recipes'][0],
# 	:ipaddress => node['ipaddress'],
# 	:fqdn => node['fqdn'],
#
#   	:version => node['lastdesiredrelease']['version'],
# 	:versioncode => node['lastdesiredrelease']['versioncode']
#
#   })
# end
#


# loop su tutte le release
(node.normal['release_list_complex']).each do |release|

	template "#{node['currentdir']['root']}/target/bpoint/files/recipes/release-#{release['version']}.rb" do
	  source "bpoint/recipes-last.rb.erb"
	  variables({

		:recipe => node['recipes'][0],
		:ipaddress => node['ipaddress'],
		:fqdn => node['fqdn'],

	  	:version => release['version'],
		:versioncode => release['versioncode']

	  })
	end
end


# default recipe costruita con tutte le release
template "#{node['currentdir']['root']}/target/bpoint/files/recipes/default.rb" do
  source "bpoint/recipes-default.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],

  	:version => node['lastdesiredrelease']['version'],
	:versioncode => node['lastdesiredrelease']['versioncode'],
	:release_list => node['release_list_complex']

  })
end


directory "#{node['currentdir']['root']}/target/bpoint/files/test/integration/default/serverspec" do
	recursive true
	action :create
end

# default test serverspec costruito con solo ultima release
template "#{node['currentdir']['root']}/target/bpoint/files/test/integration/default/serverspec/default_spec.rb" do
  source "bpoint/test-default_spec.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],

  	:version => node['lastdesiredrelease']['version'],
	:versioncode => node['lastdesiredrelease']['versioncode'],
	:release_list => node['release_list_complex']

  })
end
