#
# Cookbook Name:: bpoint-generator
# Recipe:: tabelle
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# in attesa di capire come fare ad usare directory di recipe
node.normal['currentdir']['root'] = "C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\bpoint-generator"

node.normal['lastdesiredrelease'] = {
	'version' => "16.30.00",
	'versioncode' => "xyzbcd"
}

node.normal['release_list'] = ['16.10.20','16.10.40','16.20.00','16.20.10','16.20.20','16.30.00']
node.normal['release_list_complex'] = [
	{'version' => '16.10.20', 'versioncode' => "xyza12"},
	{'version' => '16.10.40', 'versioncode' => "xyzab2"},
	{'version' => '16.20.00', 'versioncode' => "xyzabc"},
	{'version' => '16.20.10', 'versioncode' => "xyzb12"},
	{'version' => '16.20.20', 'versioncode' => "xyzbc3"},
	{'version' => '16.30.00', 'versioncode' => "xyzbcd"}
]

node.normal['splitter'] = 'default/'

node.normal['filerootpath'] = "C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\dtb\\**\\*"

node.normal['filerootpathlist'] = [
	"C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\arc\\**\\*",
	"C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\dtb\\**\\*"
]



directory "#{node['currentdir']['root']}/target/tabelle/files/recipes" do
	recursive true
	action :create
end



directory "#{node['currentdir']['root']}/target/tabelle/files/test/integration/default/serverspec" do
	recursive true
	action :create
end

# default test serverspec costruito con sha256 di tutti i file dentro la recipe ...
template "#{node['currentdir']['root']}/target/tabelle/files/test/integration/default/serverspec/default_spec.rb" do
  source "tabelle/test-default_spec.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],

	:splitter => node['splitter'],
	:filerootpath => node['filerootpath'],
	:filerootpathlist => node['filerootpathlist']

  })
end

# recipe di audit mode costruito con sha256 di tutti i file dentro la recipe ...
template "#{node['currentdir']['root']}/target/tabelle/files/recipes/AuditDTBTabelle.rb" do
  source "tabelle/AuditDTBTabelle.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],

	:splitter => node['splitter'],
	:filerootpath => node['filerootpath'],
	:filerootpathlist => node['filerootpathlist']

  })
end
