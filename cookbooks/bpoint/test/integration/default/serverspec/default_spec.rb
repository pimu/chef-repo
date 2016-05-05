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

describe command('cat /usr1/prg/etc/sisver') do
  its(:stdout) { should match /16.20.20/ }
end

describe command('cat /usr1/prg/etc/ambver') do
  its(:stdout) { should match /x/ }
end
