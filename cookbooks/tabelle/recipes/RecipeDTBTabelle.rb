#
# Cookbook Name:: bpoint
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# rem: per fare refresh dei valori degli attributi di bpoint..
#      ovvero, quando si fa install si deve fare
#           notifies :reload, 'ohai[reload_bpoint]', :immediately
# Variabili d'ambiente non standard
#
#include_recipe 'ohai'
#
#ohai 'reload_tabelle' do
#  action :nothing
#  plugin 'tabelle'
#end
#
#cookbook_file "#{node[:ohai][:plugin_path]}/tabelle.rb" do
#  source 'plugins/tabelle.rb'
#  action :create
#  owner 'root'
#  group 'root'
#  mode 0644
#  notifies :reload, 'ohai[reload_tabelle]', :immediately
#end


directory '/var/nfs_share' do
#  owner 'root'
#  group 'root'
#  mode '0755'
  action :create
end

mount '/var/nfs_share/' do
  device '10.11.0.49:/var/chef_share/'
  fstype 'nfs'
  options 'ro'
  action [:mount, :enable]
  only_if { node[:platform] == 'redhat' }
end

#definisce la lista di province, fa intersezione con ls di usr2 e copia #ricorsivamente il contenuto di nfs dtb/tabelle

provlist=['/usr2/an','/usr2/bo','/usr2/bs','/usr2/bz','/usr2/co','/usr2/fc','/usr2/fe','/usr2/il','/usr2/mc','/usr2/mn','/usr2/mo','/usr2/pc','/usr2/pr','/usr2/pv','/usr2/pu','/usr2/ra','/usr2/re','/usr2/rn','/usr2/ro','/usr2/umbria']


(Dir['/usr2/*'] & provlist).each do |file_name|
	remote_directory "#{file_name}/dtb/tabelle/" do
#	source 'file:/var/nfs_share/tabelle/dtb/tabelle/'
        source 'dtb/tabelle'
	files_mode '0777'
#	files_owner 'siscna'
	mode '0777'
#	owner 'siscna'
	action :create
	overwrite
	end
end


(Dir['/usr2/*'] & provlist).each do |file_name|
	remote_directory "#{file_name}/arc/condiv/" do
#	source 'file:/var/nfs_share/tabelle/dtb/tabelle/'
        source 'arc/condiv'
	files_mode '0777'
#	files_owner 'siscna'
	mode '0777'
#	owner 'siscna'
	action :create
	overwrite
	end
end

include_recipe 'tabelle::AuditDTBTabelle'
