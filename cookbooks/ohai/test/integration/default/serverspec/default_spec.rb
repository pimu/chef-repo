require 'spec_helper'
require 'json'

#plugin_directory = '/tmp/kitchen/ohai/plugins'
plugin_directory = '/etc/chef/ohai_plugins'

describe command("ohai -d #{plugin_directory} bpoint") do
  its(:stdout) { should match(/release/) }
  its(:stdout) { should match(/ambrelease/) }
  its(:stdout) { should match(/ambdate/) }
  its(:stdout) { should match(/ambtime/) }
  its(:stdout) { should match(/lastmodifiedtime/) }
  its(:stdout) { should match(/fullrelease/) }
  its(:stdout) { should match(/lastmodified/) }
end


describe command("ohai -d #{plugin_directory} bpointX") do
  its(:stdout) { should match(/\/usr1/) }
  its(:stdout) { should match(/release/) }
  its(:stdout) { should match(/ambrelease/) }
  its(:stdout) { should match(/ambdate/) }
  its(:stdout) { should match(/ambtime/) }
  its(:stdout) { should match(/lastmodifiedtime/) }
  its(:stdout) { should match(/fullrelease/) }
  its(:stdout) { should match(/lastmodified/) }
end
