require 'spec_helper'

describe 'bpoint::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
#  it 'does something' do
#    skip 'Replace this with meaningful tests'
  it  { should match /default/ }
#  end
end

describe command('vim --version') do
  its(:stdout) { should match /VIM - Vi IMproved 7.4/ }
end

# versione "ufficiale"
describe command('ohai -d /etc/chef/ohai_plugins bpoint/release') do
  its(:stdout) { should match /16.70.10/ }
end

# cosa accade dietro le quinte...
describe command('cat /usr1/prg/etc/sisver') do
  its(:stdout) { should match /16.70.10/ }
end

describe command('cat /usr1/prg/etc/ambver') do
  its(:stdout) { should match /x/ }
end
