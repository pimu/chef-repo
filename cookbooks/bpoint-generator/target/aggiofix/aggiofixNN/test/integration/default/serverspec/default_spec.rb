require 'spec_helper'

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



# using sha256: 2633ffae5fe263eed90581c302348f9f79f655525e447a9170718b13c9173d0b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/c/cxdel.int
describe file("#{fileroot}/e/c/cxdel.int") do
  its(:sha256sum) { should eq '2633ffae5fe263eed90581c302348f9f79f655525e447a9170718b13c9173d0b' }
end

# using sha256: 755459d94f993e0a1645d3c0b1a035ec49876bc7db55653e3a18ca6593f094f3 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/dcna900.int
describe file("#{fileroot}/e/t/dcna900.int") do
  its(:sha256sum) { should eq '755459d94f993e0a1645d3c0b1a035ec49876bc7db55653e3a18ca6593f094f3' }
end

# using sha256: 510400bfb4d0e83c3b34a4fa6c2918630cf40b3f4bcbfe98a1b8f013d1340f9c * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/dcnaca90.int
describe file("#{fileroot}/e/t/dcnaca90.int") do
  its(:sha256sum) { should eq '510400bfb4d0e83c3b34a4fa6c2918630cf40b3f4bcbfe98a1b8f013d1340f9c' }
end

# using sha256: 6632a1fe56415e705b7d0f043be4a42a95804657e1208c300a2a51e26e64e27a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/dcnanax.int
describe file("#{fileroot}/e/t/dcnanax.int") do
  its(:sha256sum) { should eq '6632a1fe56415e705b7d0f043be4a42a95804657e1208c300a2a51e26e64e27a' }
end

# using sha256: 12f08073a64894aefa97823e9b5398e9663f2c5e9df3b46005ca9a538c53a8b0 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/dcnanay.int
describe file("#{fileroot}/e/t/dcnanay.int") do
  its(:sha256sum) { should eq '12f08073a64894aefa97823e9b5398e9663f2c5e9df3b46005ca9a538c53a8b0' }
end

# using sha256: 8902817b0382dbbc64a55f89f49cc747907c4dd1d2910c68b28b10854c1f41e7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/tducna01.int
describe file("#{fileroot}/e/t/tducna01.int") do
  its(:sha256sum) { should eq '8902817b0382dbbc64a55f89f49cc747907c4dd1d2910c68b28b10854c1f41e7' }
end

# using sha256: 0ba4bc971d614a746ceb04057ea47febd838bd401ba574954b7c7b0b39356719 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/tducna02.int
describe file("#{fileroot}/e/t/tducna02.int") do
  its(:sha256sum) { should eq '0ba4bc971d614a746ceb04057ea47febd838bd401ba574954b7c7b0b39356719' }
end

# using sha256: e959e6c7c4cc75010be1a2415bc40d39cad7b0a6e6aafc72bffff319a95bd4b9 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/bpoint-generator/files/default/aggiofix/aggiofixNN/prg/e/t/tducnawr.int
describe file("#{fileroot}/e/t/tducnawr.int") do
  its(:sha256sum) { should eq 'e959e6c7c4cc75010be1a2415bc40d39cad7b0a6e6aafc72bffff319a95bd4b9' }
end


