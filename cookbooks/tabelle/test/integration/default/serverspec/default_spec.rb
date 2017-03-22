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








# using sha256: 9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored
describe file("#{file_name}/dtb/tabelle/6/cont/pacored") do
  its(:sha256sum) { should eq '9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c' }
end

# using sha256: d628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored.idx
describe file("#{file_name}/dtb/tabelle/6/cont/pacored.idx") do
  its(:sha256sum) { should eq 'd628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195' }
end

# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau
describe file("#{file_name}/dtb/tabelle/6/red/jadconau") do
  its(:sha256sum) { should eq 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075' }
end

# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau.idx
describe file("#{file_name}/dtb/tabelle/6/red/jadconau.idx") do
  its(:sha256sum) { should eq 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42' }
end

# using sha256: 49478df93e09d8d70e153c6aaa5892577e239a6ff3316efa68dece224ceb6b9e *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored
describe file("#{file_name}/dtb/tabelle/7/cont/pacored") do
  its(:sha256sum) { should eq '49478df93e09d8d70e153c6aaa5892577e239a6ff3316efa68dece224ceb6b9e' }
end

# using sha256: 8fd9c4dcfb1da2df131cd658e432aa5fa6d2c0a41636c4516455776f841aa029 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored.idx
describe file("#{file_name}/dtb/tabelle/7/cont/pacored.idx") do
  its(:sha256sum) { should eq '8fd9c4dcfb1da2df131cd658e432aa5fa6d2c0a41636c4516455776f841aa029' }
end

# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau
describe file("#{file_name}/dtb/tabelle/7/red/jadconau") do
  its(:sha256sum) { should eq 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075' }
end

# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau.idx
describe file("#{file_name}/dtb/tabelle/7/red/jadconau.idx") do
  its(:sha256sum) { should eq 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42' }
end

# using sha256: 41e6a5cf7fd134c49c0097e898dc28c5da0912bea4192baa57aeb38c0baf23db *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
describe file("#{file_name}/dtb/tabelle/base/pconst") do
  its(:sha256sum) { should eq '41e6a5cf7fd134c49c0097e898dc28c5da0912bea4192baa57aeb38c0baf23db' }
end

# using sha256: 3c0603bac287f7cee455491b8acbbf71462d10b444fa659861f711d54991795f *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
describe file("#{file_name}/dtb/tabelle/base/pconst.idx") do
  its(:sha256sum) { should eq '3c0603bac287f7cee455491b8acbbf71462d10b444fa659861f711d54991795f' }
end

# using sha256: e36c2544b3d7f3190abc107fd6c90f6b77154d5003f186de82545a7133287679 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
describe file("#{file_name}/dtb/tabelle/cont/bilabbi") do
  its(:sha256sum) { should eq 'e36c2544b3d7f3190abc107fd6c90f6b77154d5003f186de82545a7133287679' }
end

# using sha256: 1bb94601764a555cf3d50b4730108cdf8187a2b0ca70de725801a15c3cc56a4c *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
describe file("#{file_name}/dtb/tabelle/cont/bilabbi.idx") do
  its(:sha256sum) { should eq '1bb94601764a555cf3d50b4730108cdf8187a2b0ca70de725801a15c3cc56a4c' }
end



end
