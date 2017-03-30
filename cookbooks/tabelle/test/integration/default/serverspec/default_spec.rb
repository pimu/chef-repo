require 'spec_helper'

describe 'tabelle::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
#  it 'does something' do
#    skip 'Replace this with meaningful tests'
  it  { should match /default/ }
#  end
end

#
# # the simple way, probably too much simple..
# if File.directory?('/usr2/co')
#
# # file jvalcon
# # using sha256: 3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac files/default/arc/condiv/jvalcon
# describe file('/usr2/co/arc/condiv/jvalcon') do
#   its(:sha256sum) { should eq '3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac' }
# end

# # file jvalcon.idx
# # using sha256: e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7 files/default/arc/condiv/jvalcon.idx
# describe file('/usr2/co/arc/condiv/jvalcon.idx') do
#   its(:sha256sum) { should eq 'e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7' }
# end
#
# end
#

provlist=['/usr2/an','/usr2/bo','/usr2/bs','/usr2/bz','/usr2/co','/usr2/fc','/usr2/fe','/usr2/gr','/usr2/il','/usr2/mc','/usr2/mn','/usr2/mo','/usr2/pc','/usr2/pr','/usr2/pv','/usr2/pu','/usr2/ra','/usr2/re','/usr2/rn','/usr2/ro','/usr2/umbria']


# the right way, probably
(Dir['/usr2/*'] & provlist).each do |file_name|






# using sha256: a89e090592b03a2574bd6aa0d068280abf35893e18bfe820ce9a9901e111490e *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon
describe file("#{file_name}/arc/condiv/jvalcon") do
  its(:sha256sum) { should eq 'a89e090592b03a2574bd6aa0d068280abf35893e18bfe820ce9a9901e111490e' }
end

# using sha256: a67574543583dad65b11a2b35bf4879b9d9f3fce37b6e6f4443064adb9a2f45e *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon.idx
describe file("#{file_name}/arc/condiv/jvalcon.idx") do
  its(:sha256sum) { should eq 'a67574543583dad65b11a2b35bf4879b9d9f3fce37b6e6f4443064adb9a2f45e' }
end



# using sha256: 4246b0614a254606e226640462ca628489642cad9d0c43e2aa074c21a3174294 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
describe file("#{file_name}/dtb/tabelle/base/pconst") do
  its(:sha256sum) { should eq '4246b0614a254606e226640462ca628489642cad9d0c43e2aa074c21a3174294' }
end

# using sha256: 249bfce4452167ab4313583002a1c3ac8249f3eb6c2333fe03346bf06c555d1b *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
describe file("#{file_name}/dtb/tabelle/base/pconst.idx") do
  its(:sha256sum) { should eq '249bfce4452167ab4313583002a1c3ac8249f3eb6c2333fe03346bf06c555d1b' }
end

# using sha256: 622e56c89ed19e0786f9f0f3dbabb698f13911703721069251e7b1494dfd2ea8 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
describe file("#{file_name}/dtb/tabelle/cont/bilabbi") do
  its(:sha256sum) { should eq '622e56c89ed19e0786f9f0f3dbabb698f13911703721069251e7b1494dfd2ea8' }
end

# using sha256: c83c665663642df7614cd13cdc605544cf0f75d677287085f7e5ed9e142b9f8c *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
describe file("#{file_name}/dtb/tabelle/cont/bilabbi.idx") do
  its(:sha256sum) { should eq 'c83c665663642df7614cd13cdc605544cf0f75d677287085f7e5ed9e142b9f8c' }
end



end
