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






# using sha256: e449438f5114adc588bfc037071e90d0100e6a6c167a1b4868691d96f5dce6a9 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/costant
describe file("#{file_name}/arc/condiv/costant") do
  its(:sha256sum) { should eq 'e449438f5114adc588bfc037071e90d0100e6a6c167a1b4868691d96f5dce6a9' }
end

# using sha256: 11ef7434b9e33cb522158936c48e0461c9c5fa028a3adf81438f23d09f41997b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/costant.idx
describe file("#{file_name}/arc/condiv/costant.idx") do
  its(:sha256sum) { should eq '11ef7434b9e33cb522158936c48e0461c9c5fa028a3adf81438f23d09f41997b' }
end



# using sha256: d1dc7e436d58e79c4c7c0e0c9803538092fbe83e1d0f74b09f2b4da091914e1f * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
describe file("#{file_name}/dtb/tabelle/base/pconst") do
  its(:sha256sum) { should eq 'd1dc7e436d58e79c4c7c0e0c9803538092fbe83e1d0f74b09f2b4da091914e1f' }
end

# using sha256: ef13b5a1fcc64c4b1eb828bcf1d25de5356a66518f642705ddb6d46a31c7edee * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
describe file("#{file_name}/dtb/tabelle/base/pconst.idx") do
  its(:sha256sum) { should eq 'ef13b5a1fcc64c4b1eb828bcf1d25de5356a66518f642705ddb6d46a31c7edee' }
end

# using sha256: 4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut
describe file("#{file_name}/dtb/tabelle/base/pdcaut") do
  its(:sha256sum) { should eq '4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a' }
end

# using sha256: 0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut.idx
describe file("#{file_name}/dtb/tabelle/base/pdcaut.idx") do
  its(:sha256sum) { should eq '0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7' }
end

# using sha256: 00dbfb395e56f15f054783933b88fc685b7ca3ab2675732efd907ad78b5ca6a8 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
describe file("#{file_name}/dtb/tabelle/cont/bilabbi") do
  its(:sha256sum) { should eq '00dbfb395e56f15f054783933b88fc685b7ca3ab2675732efd907ad78b5ca6a8' }
end

# using sha256: 69387783a7d947d303ad57044fd65cb3345fd777f808efe63249bc01859b27a8 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
describe file("#{file_name}/dtb/tabelle/cont/bilabbi.idx") do
  its(:sha256sum) { should eq '69387783a7d947d303ad57044fd65cb3345fd777f808efe63249bc01859b27a8' }
end



end
