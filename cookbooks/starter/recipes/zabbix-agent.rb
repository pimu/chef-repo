# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

#log "Welcome to Chef, #{node["starter_name"]}!" do
#  level :info
#end

## For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
#http://repo.zabbix.com/zabbix/1.8/rhel/6/x86_64/zabbix-1.8.22-1.el6.x86_64.rpm
#http://repo.zabbix.com/zabbix/1.8/rhel/6/x86_64/zabbix-agent-1.8.22-1.el6.x86_64.rpm
hostname = node[:hostname]

case node[:platform]
when 'ubuntu', 'debian'

# vedere, per esempio, http://tecadmin.net/install-zabbix-agent-on-ubuntu-and-debian/

log "Welcome to Chef, but.. zabbix-agent installation not yet implemented on #{node[:platform]}!" do
  level :info
end

when 'redhat', 'centos'

remote_file "#{Chef::Config[:file_cache_path]}/zabbix-1.8.rpm" do
    source "http://repo.zabbix.com/zabbix/1.8/rhel/6/x86_64/zabbix-1.8.22-1.el6.x86_64.rpm"
    action :create
end
remote_file "#{Chef::Config[:file_cache_path]}/zabbix-agent-1.8.rpm" do
    source "http://repo.zabbix.com/zabbix/1.8/rhel/6/x86_64/zabbix-agent-1.8.22-1.el6.x86_64.rpm"
    action :create
end


rpm_package "zabbix" do
    source "#{Chef::Config[:file_cache_path]}/zabbix-1.8.rpm"
    action :upgrade
end
rpm_package "zabbix-agent" do
    source "#{Chef::Config[:file_cache_path]}/zabbix-agent-1.8.rpm"
    action :upgrade
end

yum_package 'zabbix-agent' do
#  version '1.8.22-1.el6.x86_64'
  action :install
end

#search_file_replace_line(regex, newline) ⇒ Object
ruby_block "setup-zabbix-agent-config-file" do

  block do
    fe = Chef::Util::FileEdit.new("/etc/zabbix/zabbix_agentd.conf")

    fe.search_file_replace_line(/Server=127.0.0.1/,"Server=10.13.6.15")
    fe.search_file_replace_line(/Hostname=Zabbix server/,"Hostname=#{node['hostname']}")

    fe.write_file
  end
#  not_if { Resolv.getaddress(node['chef-server']['api_fqdn']) rescue false }
end

service 'zabbix-agent' do
  action [ :enable, :start ]
end

end

# inizio parte Chef Audit...

case node[:platform]
#when 'ubuntu', 'debian'

#  control_group 'Audit Mode Ubuntu' do
#  end

#end

when 'redhat', 'centos'

control_group 'Audit Mode' do

  control 'zabbix package' do
    it 'should be installed' do
      expect(package('zabbix')).to be_installed
    end
  end

  control 'zabbix package' do
    it 'should be installed V 1.8.22' do
      expect(package('zabbix-agent')).to be_installed.with_version('1.8.22')
    end
  end

  control 'zabbix-agent service' do
    let(:zabbix_agent_service) { service('zabbix-agent') }
    it 'should be enabled' do
      expect(zabbix_agent_service).to be_enabled
    end
    it 'should be running' do
      expect(zabbix_agent_service).to be_running
    end
  end

  control 'zabbix-agent config directory' do
    let(:config_dir) { file('/etc/zabbix') }
    it 'should exist with correct permissions' do
      expect(config_dir).to be_directory
#      expect(config_dir).to be_mode(0700)
    end
    it 'should be owned by the db user' do
      expect(config_dir).to be_owned_by('root')
    end
  end


  control 'zabbix-agent config file' do
    let(:config_file) { file('/etc/zabbix/zabbix_agentd.conf') }
    it 'should exist with correct permissions' do
      expect(config_file).to be_file
#      expect(config_file).to be_mode(0644)
    end
    it 'should contain required configuration 10.13.6.15' do
      expect(config_file.content).to match(/Server\=10\.13\.6\.15/)
    end
    it 'should contain required configuration Hostname' do
      expect(config_file.content).to match(/Hostname=#{hostname}/)
    end
  end

end

end
