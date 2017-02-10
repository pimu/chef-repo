#
# Cookbook Name:: aggiofix
# Recipe:: aggiofix-pre180000
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# ohai zone
include_recipe 'ohai'

ohai 'reload_bpoint' do
  action :nothing
  plugin 'bpoint'
end

cookbook_file "#{node[:ohai][:plugin_path]}/bpoint.rb" do
  source 'plugins/bpoint.rb'
  action :create
  owner 'root'
  group 'root'
  mode 0644
  notifies :reload, 'ohai[reload_bpoint]', :immediately
end
# end of ohai zone

#runmode = "gzbased"
runmode = "filebased"

node.default['desired_version'] = "18.00.00"

node.default['targetdir'] = '/usr1/prg/'

node.default['aggiofixname'] = 'aggiofix-pre180000'


include_recipe "aggiofix::aggiofix-#{runmode}"
