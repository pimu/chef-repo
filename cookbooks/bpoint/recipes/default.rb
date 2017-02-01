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

#cookbook_file "#{node[:ohai][:plugin_path]}/bpoint.rb" do
#  source 'plugins/bpoint.rb'
#  action :create
#  owner 'root'
#  group 'root'
#  mode 0644
#  notifies :reload, 'ohai[reload_bpoint]', :immediately
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


include_recipe 'bpoint::release-17.00.00'
include_recipe 'bpoint::release-17.10.00'
# last
include_recipe 'bpoint::release-17.10.10'


case node[:platform]

when 'redhat', 'centos'


control_group 'Audit Mode bpoint' do

  ohaioutput = `ohai -d /etc/chef/ohai_plugins bpoint/release`

  bpointoutput = `ohai -d /etc/chef/ohai_plugins bpointX`
  bpointstatus = JSON.parse(bpointoutput)

  bpointstatus.keys.each do |prgroot|

    prgenv = bpointstatus[prgroot]

#    Chef::Log.info("chef::log::audit: access to release  -> #{prgenv[:release]}")
#    Chef::Log.info("chef::log::audit: |ohai -d /etc/chef/ohai_plugins bpointX|  -> #{bpointoutput}")
#    Chef::Log.info("chef::log::audit: |JSON.parse(...)|  -> #{bpointstatus}")

    # versione "ufficiale"
    control "bpoint version by ohai - #{prgroot}" do
      it 'should be version 17.10.10' do
        expect(bpointstatus[prgroot]['release']).to  match(/17\.10\.10/)
      end
    end

    control "sisver file - #{prgroot}" do
      let(:sisver_file) { file("#{prgroot}/prg/etc/sisver") }

      it 'should contain required version 17.10.10' do
        expect(sisver_file.content).to match(/17\.10\.10/)
      end
    end

    control "ambver file - #{prgroot}" do
      let(:ambver_file) { file("#{prgroot}/prg/etc/ambver") }

      it 'should contain start with x' do
        expect(ambver_file.content).to match(/x/)
      end
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
