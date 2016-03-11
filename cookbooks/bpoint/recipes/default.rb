#
# Cookbook Name:: bpoint
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# rem: per fare refresh dei valori degli attributi di bpoint..
#      ovvero, quando si fa install si deve fare
#           notifies :reload, 'ohai[reload_bpoint]', :immediately
ohai 'reload_bpoint' do
  action :nothing
  plugin 'bpoint'
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

include_recipe 'bpoint::release-16.01.00'

include_recipe 'bpoint::release-16.01.10'

include_recipe 'bpoint::release-16.10.20'

include_recipe 'bpoint::release-16.10.40'


# 
# in attesa di capire meglio il razionale ...
# 
# service 'krun_cnaco_start' do
#   service_name 'krun_cnaco'
#   action :start
# end
