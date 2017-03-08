#
# Cookbook Name:: aggiofix
# Recipe:: aggiofix-filebased
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

desired_version = node['desired_version']
targetdir = node['targetdir']
aggiofixname = node['aggiofixname']
# from ohai through our custom plugin
allprgroots = node.bpointconfig


# per testare esistenza attributo bpoint[release] o bpoint[release] a null (bpoint non installato) o compatibilita' della versione bpoint (bpoint installato) 
#if !node.bpoint.attribute?('release') || node.bpoint.release.nil? 


allprgroots.each do |prgroot,currentenv|

  targetdir = "#{prgroot}/prg"

  directory "#{targetdir}" do
    action :create
    recursive true
  end

  prgroothuman = prgroot.sub('/','-')

  Chef::Log.info("chef::log current prgroot: #{prgroot} (#{prgroothuman})")

  # per testare esistenza attributo bpoint[release] o bpoint[release] a null (bpoint non installato) o compatibilita' della versione bpoint (bpoint installato) 
  if !currentenv.attribute?('release') || currentenv.release.nil? || currentenv.release < desired_version
	Chef::Log.info("[filebased] bpoint not installed or (on #{targetdir}) version less than ... #{desired_version}")	

	remote_directory "#{targetdir}" do
		source "#{aggiofixname}/prg"
	end

	else
		Chef::Log.info("[filebased] bpoint installed (on #{targetdir}) and version greater or equal to ... #{desired_version}")
  end

end
#end

