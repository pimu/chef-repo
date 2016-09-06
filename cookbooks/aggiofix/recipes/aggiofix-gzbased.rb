#
# Cookbook Name:: aggiofix
# Recipe:: aggiofix-gzbased
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

desired_version = node['desired_version']
targetdir = node['targetdir']
aggiofixname = node['aggiofixname']

directory "#{targetdir}" do
  action :create
  recursive true
end

# REM: any other ways to ...?
directory "/var/tmp/#{aggiofixname}/" do
  action :create
  recursive true
end

cookbook_file "/var/tmp/#{aggiofixname}/aggiofix.gz" do

  source "#{aggiofixname}/aggiofix.gz"

end


bash "install_#{aggiofixname}" do
# per testare esistenza attributo bpoint[release] o bpoint[release] a null (bpoint non installato) o compatibilita' della versione bpoint (bpoint installato) 
  if !node.bpoint.attribute?('release') || node.bpoint.release.nil? || node.bpoint.release < desired_version

    Chef::Log.info("[gzbased] bpoint not installed or version less than ... #{desired_version}")

    cwd ::File.dirname("/var/tmp/#{aggiofixname}/aggiofix.gz")
    code <<-EOH
      mkdir -p work
      cd work
      cp ../aggiofix.gz .
      gunzip -v aggiofix.gz 
      cpio -idm < aggiofix
      cp -RTv prg/ #{targetdir}
      EOH
    not_if { ::File.exists?("/var/tmp/#{aggiofixname}/work") }

  else

    code <<-EOH
      echo nothing tempted
      EOH

    Chef::Log.info("[gzbased] bpoint installed and version greater or equal to ... #{desired_version}")

  end

end
