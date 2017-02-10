#
# Cookbook Name:: bpoint-generator
# Recipe:: tabelle
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# in attesa di capire come fare ad usare directory di recipe
#node.normal['currentdir']['root'] = "C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\bpoint-generator"
#cookbookdir = File.expand_path("../../", __FILE__)
#cookbookdir = Dir.pwd
#cookbookdir =
if platform?('windows')
	cookbookdir = "C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\bpoint-generator"
	cookbookdir = cookbookdir.to_s().gsub('/','\\\\') if platform?('windows')
	parentcookbookdir = File.expand_path('..', cookbookdir)
	parentcookbookdir = parentcookbookdir.to_s().gsub('/','\\\\') if platform?('windows')
else
	cookbookdir = ENV['HOME'] + '/chef-repo/cookbooks/bpoint-generator'
	parentcookbookdir = File.expand_path('..', cookbookdir)
end


node.normal['currentdir']['root'] = "#{cookbookdir}"
node.normal['currentdir']['parentroot'] = "#{parentcookbookdir}"

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

node.normal['filerootpath'] = "#{node['currentdir']['parentroot']}/tabelle/files/default/dtb/**/*"

node.normal['filerootpathlist'] = [
	"#{node['currentdir']['parentroot']}/tabelle/files/default/arc/**/*",
	"#{node['currentdir']['parentroot']}/tabelle/files/default/dtb/**/*"
]



directory "#{node['currentdir']['root']}/target/tabelle/files/recipes" do
#directory "target/tabelle/files/recipes" do
	recursive true
	action :create
end



directory "#{node['currentdir']['root']}/target/tabelle/files/test/integration/default/serverspec" do
#directory "target/tabelle/files/test/integration/default/serverspec" do
	recursive true
	action :create
end

# recipe di audit mode costruito con sha256 di tutti i file dentro la recipe ...
template "#{node['currentdir']['root']}/target/tabelle/files/recipes/RecipeDTBTabelle.rb" do
#template "target/tabelle/files/recipes/RecipeDTBTabelle.rb" do
  source "tabelle/RecipeDTBTabelle.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],

	:splitter => node['splitter'],
	:filerootpath => node['filerootpath'],
	:filerootpathlist => node['filerootpathlist']

  })
end

# default test serverspec costruito con sha256 di tutti i file dentro la recipe ...
template "#{node['currentdir']['root']}/target/tabelle/files/test/integration/default/serverspec/default_spec.rb" do
#template "target/tabelle/files/test/integration/default/serverspec/default_spec.rb" do
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
#template "target/tabelle/files/recipes/AuditDTBTabelle.rb" do
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
