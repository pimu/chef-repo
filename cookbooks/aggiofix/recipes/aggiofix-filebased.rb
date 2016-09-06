#
# Cookbook Name:: aggiofix
# Recipe:: aggiofix-filebased
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

desired_version = node['desired_version']
targetdir = node['targetdir']
aggiofixname = node['aggiofixname']

directory "#{targetdir}" do
  action :create
  recursive true
end


# per testare esistenza attributo bpoint[release] o bpoint[release] a null (bpoint non installato) o compatibilita' della versione bpoint (bpoint installato) 
if !node.bpoint.attribute?('release') || node.bpoint.release.nil? || node.bpoint.release < desired_version

  Chef::Log.info("[filebased] bpoint not installed or version less than ... #{desired_version}")

  remote_directory "#{targetdir}" do
    source "#{aggiofixname}/prg"

  end

else

  Chef::Log.info("[filebased] bpoint installed and version greater or equal to ... #{desired_version}")

end
