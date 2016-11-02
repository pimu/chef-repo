#
# Cookbook Name:: bpoint
# Recipe:: release-16.60.00
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#  file has been created by the chef recipe "bpoint-generator::bpoint"
#              node ip address is "10.11.200.19"
#              node fully qualified domain name is "munariw8.siaer.prv"
#
#

# start of "attributi per questa recipe di questa release"

node.normal['bpoint']['thisrelease'] = "16.60.00"

#default['bpoint']['thisrelease_sourcedir'] = '%16.01' -- NB il carattere %hh sta per hexadecimal character, quindi %25 e' %
#node.normal['bpoint']['thisrelease_sourcedir'] = "%251610.40"
node.normal['bpoint']['thisrelease_sourcedir'] = "16.60.00"

node.normal['bpoint']['thisambrelease'] = "xyzbcg"

# end of "attributi per questa recipe di questa release"


#
# Cookbook Name:: bpoint
# Recipe:: release-core
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#desired_version = node['bpoint']['thisrelease']
desired_version = node.bpoint.thisrelease

# Create the directory per i file.
directory "#{Chef::Config[:file_cache_path]}/rilasci/#{node.bpoint.thisrelease}" do
  recursive true
end


# # crea il file sisagg sotto la directory f(thisrelease) prendendolo dalla recipe stessa.
# cookbook_file "/tmp/rilasci/#{node.bpoint.thisrelease}/sisagg" do
#   source "#{node.bpoint.thisrelease}/sisagg"
# end

# crea il file sisagg sotto la directory f(thisrelease) prendendolo da un repository temporaneo
remote_file "#{Chef::Config[:file_cache_path]}/rilasci/#{node.bpoint.thisrelease}/sisagg" do
#  source "file:/tmp/repository/rilasci/#{node.bpoint.thisrelease_sourcedir}/sisagg"
  source "file:/var/nfs_share/bpoint/#{node.bpoint.thisrelease_sourcedir}/sisagg"
  mode '0755'
end



bash "install_bpoint_release-#{node.bpoint.thisrelease}" do

   Chef::Log.info("chef::log current version: #{node.bpoint.release}")
   Chef::Log.info("chef::log next version: #{desired_version}")
   notifies :run, 'ruby_block[log_versions]', :immediately

   if node.bpoint.release < desired_version

     cwd "#{Chef::Config[:file_cache_path]}/rilasci/#{node.bpoint.thisrelease}"
#     user 'rbenv'
#     group 'rbenv'
     code <<-EOH
       # command to install bpoint release...
       #{node.bpoint.installer} #{Chef::Config[:file_cache_path]}/rilasci/#{node.bpoint.thisrelease}/sisagg

       echo "version #{desired_version} installed"
     EOH

     Chef::Log.info("version #{desired_version} installed")
     notifies :run, 'ruby_block[log_versions]', :immediately


# rem: per fare refresh dei valori degli attributi di bpoint..
     notifies :reload, 'ohai[reload_bpoint]', :immediately

   else

     code <<-EOH
       echo "version #{desired_version} not to be installed (present #{node.bpoint.release})"
     EOH

     Chef::Log.info("version #{desired_version} not to be installed (present #{node.bpoint.release})")
     notifies :run, 'ruby_block[log_versions]', :immediately

   end

end
