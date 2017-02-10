#
# Cookbook Name:: bpoint-generator
# Recipe:: tabelle
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
node.default['targetdir'] = '/usr1/prg/'
node.default['aggiofixname'] = "aggiofixNN"
node.default['aggiofixsourcefile'] = "aggiofix/aggiofixNN/aggiofix.gz"
node.default['aggiofixlimitversion'] = '00.00.00'


targetdir = node['targetdir']
aggiofixname = node['aggiofixname']
aggiofixsourcefile = node['aggiofixsourcefile']
aggiofixlimitversion = node['aggiofixlimitversion']


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

node.normal['splitter'] = 'prg/'

node.normal['filerootpath'] = "files/default/aggiofix/#{aggiofixname}/**/*"

node.normal['filerootpathlist'] = [
	"files/default/aggiofix/#{aggiofixname}/**/*"
]

# qui andrebbe la parte di spacchettamento del file .gz sotto files/default
# si assume che sotto files/default/#{aggiofixname} vi siano
#     - file aggiofix.gz
#     - directory prg con tutti i file da copiare...


directory "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}" do
	recursive true
	action :create
end

#
# remote_file "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}/aggiofix.gz" do
# 	source "file:#{aggiofixsourcefile}"
# end
#

cookbook_file "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}/aggiofix.gz" do
	source "#{aggiofixsourcefile}"
end

if platform?("windows")

	powershell_script "unpack-#{aggiofixname}-aggiofix.gz" do

		cwd "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}"

		code <<-EOH
		Set-Alias 7zip 'C:\\Program Files\\7-Zip\\7z.exe'
		7zip x "aggiofix.gz"
		7zip x "aggiofix"
		rm "aggiofix"
		EOH
	end

end

#  end of ...

directory "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/recipes" do
	recursive true
	action :create
end

# default recipe con nome aggiofix ...
template "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/recipes/#{aggiofixname}.rb" do
  source "aggiofix/aggiofix.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],


	:targetdir => targetdir,
	:aggiofixname => aggiofixname,
	:aggiofixlimitversion => aggiofixlimitversion,

	:splitter => node['splitter'],
#	:filerootpath => node['filerootpath'],
	:filerootpath => "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}",
#	:filerootpathlist => node['filerootpathlist']
	:filerootpathlist => [ "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}" ]

  })
end



directory "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/test/integration/default/serverspec" do
	recursive true
	action :create
end

# default test serverspec costruito con sha256 di tutti i file dentro la recipe ...
template "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/test/integration/default/serverspec/default_spec.rb" do
  source "aggiofix/test-default_spec.rb.erb"
  variables({

	:recipe => node['recipes'][0],
	:ipaddress => node['ipaddress'],
	:fqdn => node['fqdn'],



	:targetdir => targetdir,
	:aggiofixname => aggiofixname,
	:aggiofixlimitversion => aggiofixlimitversion,

	:splitter => node['splitter'],
#	:filerootpath => node['filerootpath'],
	:filerootpath => "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}/**/*",
#	:filerootpathlist => node['filerootpathlist']
	:filerootpathlist => [ "#{node['currentdir']['root']}/target/aggiofix/#{aggiofixname}/files/default/#{aggiofixname}/**/*" ]

  })
end
