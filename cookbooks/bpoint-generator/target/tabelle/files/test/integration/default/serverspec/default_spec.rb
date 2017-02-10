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
# # file jvalcon
# # using sha256: 3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac files/default/arc/condiv/jvalcon
# describe file("#{file_name}/arc/condiv/jvalcon") do
#   its(:sha256sum) { should eq '3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac' }
# end
# 
# # file jvalcon.idx
# # using sha256: e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7 files/default/arc/condiv/jvalcon.idx
# describe file("#{file_name}/arc/condiv/jvalcon.idx") do
#   its(:sha256sum) { should eq 'e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7' }
# end
# 
# 
# # using sha256: \3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac *C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\arc\\condiv\\jvalcon
# describe file("#{file_name}/arc/condiv/jvalcon") do
#   its(:sha256sum) { should eq '3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac' }
# end
# 
# # using sha256: \e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7 *C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\arc\\condiv\\jvalcon.idx
# describe file("#{file_name}/arc/condiv/jvalcon.idx") do
#   its(:sha256sum) { should eq 'e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7' }
# end
# 
# # using sha256: \ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18 *C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\arc\\condiv\\6\\studi\\jsdscon
# describe file("#{file_name}/arc/condiv/6/studi/jsdscon") do
#   its(:sha256sum) { should eq 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18' }
# end
# 
# # using sha256: \e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb *C:\\Work\\Projects\\chef\\chef-repo\\cookbooks\\tabelle\\files\\default\\arc\\condiv\\6\\studi\\jsdscon.idx
# describe file("#{file_name}/arc/condiv/6/studi/jsdscon.idx") do
#   its(:sha256sum) { should eq 'e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb' }
# end
# 
# 

provlist=['/usr2/an','/usr2/bo','/usr2/bs','/usr2/bz','/usr2/co','/usr2/fc','/usr2/fe','/usr2/il','/usr2/mc','/usr2/mn','/usr2/mo','/usr2/pc','/usr2/pr','/usr2/pv','/usr2/pu','/usr2/ra','/usr2/re','/usr2/rn','/usr2/ro','/usr2/umbria']


# the right way, probably
(Dir['/usr2/*'] & provlist).each do |file_name| 








# using sha256: fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
describe file("#{file_name}/dtb/tabelle/base/pconst") do
  its(:sha256sum) { should eq 'fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47' }
end

# using sha256: 8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
describe file("#{file_name}/dtb/tabelle/base/pconst.idx") do
  its(:sha256sum) { should eq '8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a' }
end

# using sha256: 7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
describe file("#{file_name}/dtb/tabelle/cont/bilabbi") do
  its(:sha256sum) { should eq '7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc' }
end

# using sha256: 823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
describe file("#{file_name}/dtb/tabelle/cont/bilabbi.idx") do
  its(:sha256sum) { should eq '823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc' }
end



end
