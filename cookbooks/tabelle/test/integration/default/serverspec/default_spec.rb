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







# using sha256: ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/6/studi/jsdscon
describe file("#{file_name}/arc/condiv/6/studi/jsdscon") do
  its(:sha256sum) { should eq 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18' }
end

# using sha256: e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/6/studi/jsdscon.idx
describe file("#{file_name}/arc/condiv/6/studi/jsdscon.idx") do
  its(:sha256sum) { should eq 'e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb' }
end

# using sha256: 3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon
describe file("#{file_name}/arc/condiv/jvalcon") do
  its(:sha256sum) { should eq '3e792049551761ca13ede0199bff6b991ff9f7b5b5517974bccc37d3ebfe72ac' }
end

# using sha256: e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon.idx
describe file("#{file_name}/arc/condiv/jvalcon.idx") do
  its(:sha256sum) { should eq 'e38ded3b6d401425acf2ea32b13bdfcc987aa7961a51c2138ed238bec99951c7' }
end



# using sha256: 1fc26b59535e059324d049da38b776fce57641793ec43af1c54078e3fd03d45d * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/cont/pacored
describe file("#{file_name}/dtb/tabelle/5/cont/pacored") do
  its(:sha256sum) { should eq '1fc26b59535e059324d049da38b776fce57641793ec43af1c54078e3fd03d45d' }
end

# using sha256: 038424643873857f56d34222bf93804e487755a5e9c469bd9de0db15bc153112 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/cont/pacored.idx
describe file("#{file_name}/dtb/tabelle/5/cont/pacored.idx") do
  its(:sha256sum) { should eq '038424643873857f56d34222bf93804e487755a5e9c469bd9de0db15bc153112' }
end

# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/red/jadconau
describe file("#{file_name}/dtb/tabelle/5/red/jadconau") do
  its(:sha256sum) { should eq 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075' }
end

# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/red/jadconau.idx
describe file("#{file_name}/dtb/tabelle/5/red/jadconau.idx") do
  its(:sha256sum) { should eq 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42' }
end

# using sha256: 934dc65180e735d93420d8b7471e631ce31f0a7820134d20745773daad7b919d * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored
describe file("#{file_name}/dtb/tabelle/6/cont/pacored") do
  its(:sha256sum) { should eq '934dc65180e735d93420d8b7471e631ce31f0a7820134d20745773daad7b919d' }
end

# using sha256: 21db6f7a95048b4e54b018ac215d7168cc9af766993914792d20818d869c8549 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored.idx
describe file("#{file_name}/dtb/tabelle/6/cont/pacored.idx") do
  its(:sha256sum) { should eq '21db6f7a95048b4e54b018ac215d7168cc9af766993914792d20818d869c8549' }
end

# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau
describe file("#{file_name}/dtb/tabelle/6/red/jadconau") do
  its(:sha256sum) { should eq 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075' }
end

# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau.idx
describe file("#{file_name}/dtb/tabelle/6/red/jadconau.idx") do
  its(:sha256sum) { should eq 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42' }
end

# using sha256: a1bf26d61439edc882bea517cd8888d14daa5ce6ba6692a47b2358f347855db7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
describe file("#{file_name}/dtb/tabelle/base/pconst") do
  its(:sha256sum) { should eq 'a1bf26d61439edc882bea517cd8888d14daa5ce6ba6692a47b2358f347855db7' }
end

# using sha256: 4c5dbc984431d74802f86f3e6ccaac7077f315b5d93b6a54b7eda8c20c34d61c * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
describe file("#{file_name}/dtb/tabelle/base/pconst.idx") do
  its(:sha256sum) { should eq '4c5dbc984431d74802f86f3e6ccaac7077f315b5d93b6a54b7eda8c20c34d61c' }
end

# using sha256: 5eb2bcebdb15364f5302689b9f51fe25a566f1abca6a410df53fe5613562b3c0 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut
describe file("#{file_name}/dtb/tabelle/base/pdcaut") do
  its(:sha256sum) { should eq '5eb2bcebdb15364f5302689b9f51fe25a566f1abca6a410df53fe5613562b3c0' }
end

# using sha256: 0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut.idx
describe file("#{file_name}/dtb/tabelle/base/pdcaut.idx") do
  its(:sha256sum) { should eq '0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7' }
end

# using sha256: eb811b02858c5e5f100b1802f7b34a6c83baa11e542a767d8bb295d6fb71c829 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcedit
describe file("#{file_name}/dtb/tabelle/base/pdcedit") do
  its(:sha256sum) { should eq 'eb811b02858c5e5f100b1802f7b34a6c83baa11e542a767d8bb295d6fb71c829' }
end

# using sha256: 941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcedit.idx
describe file("#{file_name}/dtb/tabelle/base/pdcedit.idx") do
  its(:sha256sum) { should eq '941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b' }
end

# using sha256: 775036194844b737b725e5766886aa8a86e8ceb482101e67dc450ac018cf9dfc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
describe file("#{file_name}/dtb/tabelle/cont/bilabbi") do
  its(:sha256sum) { should eq '775036194844b737b725e5766886aa8a86e8ceb482101e67dc450ac018cf9dfc' }
end

# using sha256: c583c888f8dd84a41cffc0c0c9c6f903074107aabb09042c97fef62a4af99720 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
describe file("#{file_name}/dtb/tabelle/cont/bilabbi.idx") do
  its(:sha256sum) { should eq 'c583c888f8dd84a41cffc0c0c9c6f903074107aabb09042c97fef62a4af99720' }
end



end
