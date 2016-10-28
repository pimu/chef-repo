require 'spec_helper'


def is_bpoint_already_updated?

  bpoint_release = `ohai -d /etc/chef/ohai_plugins bpoint | grep -i \"release\"\:`
  ohai_bpoint_version = `ohai -d /etc/chef/ohai_plugins bpoint/release`

  is_bpoint_already_updated = false
  is_bpoint_present =  bpoint_release !~ /null/

  if (is_bpoint_present) 
    is_bpoint_already_updated = ohai_bpoint_version >= '18.00.00'
  end

  return is_bpoint_already_updated
end


describe "Verifying file coherence..." do


describe 'aggiofix::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
#  it 'does something' do
#    skip 'Replace this with meaningful tests'
  it  { should match /default/ }
#  end
end

# the right way, probably
fileroot = '/usr1/prg' 


if is_bpoint_already_updated?

# versione "ufficiale"
describe command('ohai -d /etc/chef/ohai_plugins bpoint/release') do
  its(:stdout) { should >= '18.00.00' }
end

else




# using sha256: a0878b5a38ecd83bf4679ca31a41a485fbb271b340af2bb7db4d908cee9547af * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/target/aggiofix/aggiofix-pre180000/files/default/aggiofix-pre180000/prg/e/r/rfabrip.int
describe file("#{fileroot}/e/r/rfabrip.int") do
  its(:sha256sum) { should eq 'a0878b5a38ecd83bf4679ca31a41a485fbb271b340af2bb7db4d908cee9547af' }
end

# using sha256: 80f33f0e2a4b6cbbd88ea5c1e32634178e370a025464f6d193e84634a9cad349 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/target/aggiofix/aggiofix-pre180000/files/default/aggiofix-pre180000/prg/etc/ambver
describe file("#{fileroot}/etc/ambver") do
  its(:sha256sum) { should eq '80f33f0e2a4b6cbbd88ea5c1e32634178e370a025464f6d193e84634a9cad349' }
end


end

end
