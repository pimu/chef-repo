#
# Cookbook Name:: bpoint
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# rem: per fare refresh dei valori degli attributi di bpoint..
#      ovvero, quando si fa install si deve fare
#           notifies :reload, 'ohai[reload_bpoint]', :immediately
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
end

# per fare log a tempo di converge (execution) e non di prepare (compilation)
ruby_block 'log_versions' do
  block do
   Chef::Log.info("chef::log::run: versions -> #{node.bpoint.thisrelease} vs #{node.bpoint.release}")
  end
  action :nothing
end

#
# in attesa di capire meglio il razionale ...
#
# service 'krun_cnaco_stop' do
#   service_name 'krun_cnaco'
#   action :stop
# end


include_recipe 'bpoint::release-16.10.20'
include_recipe 'bpoint::release-16.10.40'
include_recipe 'bpoint::release-16.20.00'
include_recipe 'bpoint::release-16.20.10'
include_recipe 'bpoint::release-16.20.20'
include_recipe 'bpoint::release-16.30.00'
include_recipe 'bpoint::release-16.40.00'
include_recipe 'bpoint::release-16.40.10'
include_recipe 'bpoint::release-16.40.20'
include_recipe 'bpoint::release-16.50.00'
include_recipe 'bpoint::release-16.60.00'
include_recipe 'bpoint::release-16.70.00'
# last
include_recipe 'bpoint::release-16.70.10'



case node[:platform]

when 'redhat', 'centos'

ohaioutput = `ohai -d /etc/chef/ohai_plugins bpoint/release`

control_group 'Audit Mode bpoint' do

  # versione "ufficiale"
  control 'bpoint version by ohai' do
    it 'should be version 16.70.10' do
      expect(ohaioutput).to  match(/16\.70\.10/)
    end
  end

  control 'sisver file' do
    let(:sisver_file) { file('/usr1/prg/etc/sisver') }

    it 'should contain required version 16.70.10' do
      expect(sisver_file.content).to match(/16\.70\.10/)
    end
  end

  control 'ambver file' do
    let(:ambver_file) { file('/usr1/prg/etc/ambver') }

    it 'should contain start with x' do
      expect(ambver_file.content).to match(/x/)
    end
  end

end

end

#
# in attesa di capire meglio il razionale ...
#
# service 'krun_cnaco_start' do
#   service_name 'krun_cnaco'
#   action :start
# end
