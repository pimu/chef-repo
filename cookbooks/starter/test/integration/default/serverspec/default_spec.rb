require 'spec_helper'

describe 'starter::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
#  it 'does something' do
#    skip 'Replace this with meaningful tests'
  it  { should match /default/ }
#  end
end

if os[:family] == 'redhat'

describe package('zabbix-agent') do
  it { should be_installed }
end

describe package('zabbix-agent') do
#  it { should be_installed.by('yum').with_version('1.8.22-1.el6.x86_64') }
  it { should be_installed.with_version('1.8.22-1.el6.x86_64') }
end

describe service('zabbix-agent') do
  it { should be_enabled }
end

describe service('zabbix-agent') do
  it { should be_running }
end

end
