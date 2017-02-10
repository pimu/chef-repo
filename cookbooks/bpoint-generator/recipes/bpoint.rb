#
# Cookbook Name:: bpoint-generator
# Recipe:: bpoint
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# in attesa di capire come fare ad usare directory di recipe
#node.normal['currentdir']['root'] = "C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\bpoint-generator"
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
	'version' => "17.10.10",
	'versioncode' => "xyzbcf"
}

#node.normal['release_list'] = ['16.50.00','16.60.00','16.70.00','16.70.10',"17.00.00","17.10.10"]
node.normal['release_list'] = ["17.00.00","17.10.00","17.10.10"]
node.normal['release_list_complex'] = [
#	{'version' => '16.50.00', 'versioncode' => "xyzbcf"},
#	{'version' => '16.60.00', 'versioncode' => "xyzbcg"},
#	{'version' => '16.70.00', 'versioncode' => "xyzbch"},
#	{'version' => '16.70.10', 'versioncode' => "xyzbch"},
	{'version' => '17.00.00', 'versioncode' => "xyzbcl"},
	{'version' => '17.10.00', 'versioncode' => "xyzbco"},
	{'version' => '17.10.10', 'versioncode' => "xyzbcp"}
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
