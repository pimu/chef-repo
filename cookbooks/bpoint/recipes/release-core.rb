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
  source "file:/tmp/repository/rilasci/#{node.bpoint.thisrelease_sourcedir}/sisagg"
  mode '0755'
end

bash 'install_bpoint_release' do

   Chef::Log.info("chef::log current version: #{node.bpoint.release}")
   Chef::Log.info("chef::log next version: #{desired_version}")

   if node.bpoint.release < desired_version

     cwd "#{Chef::Config[:file_cache_path]}/rilasci/#{node.bpoint.thisrelease}"
#     user 'rbenv'
#     group 'rbenv'
     code <<-EOH
       # command to install bpoint release...
       #{node.bpoint.installer} #{Chef::Config[:file_cache_path]}/rilasci/#{node.bpoint.thisrelease}/sisagg

       echo "version #{desired_version} installed"
     EOH

#     log "version #{desired_version} installed"
     Chef::Log.info("version #{desired_version} installed")

   else

     code <<-EOH
       echo "version #{desired_version} not to be installed (present #{node.bpoint.release})"
     EOH

#     log "version #{desired_version} not to be installed (#{node.bpoint.release})"
     Chef::Log.info("version #{desired_version} not to be installed (present #{node.bpoint.release})")

   end

end