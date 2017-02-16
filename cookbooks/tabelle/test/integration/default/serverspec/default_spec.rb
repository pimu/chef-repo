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

provlist=['/usr2/an','/usr2/bo','/usr2/bs','/usr2/bz','/usr2/co','/usr2/fc','/usr2/fe','/usr2/il','/usr2/mc','/usr2/mn','/usr2/mo','/usr2/pc','/usr2/pr','/usr2/pv','/usr2/pu','/usr2/ra','/usr2/re','/usr2/rn','/usr2/ro','/usr2/umbria']


# the right way, probably
(Dir['/usr2/*'] & provlist).each do |file_name|






# using sha256: 8241565a66829380c0c849b5bdaf1755904a1f2cd308597361f24fb4f47f0a8b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/6/studi/jsdscon
describe file("#{file_name}/arc/condiv/6/studi/jsdscon") do
  its(:sha256sum) { should eq '8241565a66829380c0c849b5bdaf1755904a1f2cd308597361f24fb4f47f0a8b' }
end

# using sha256: e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/6/studi/jsdscon.idx
describe file("#{file_name}/arc/condiv/6/studi/jsdscon.idx") do
  its(:sha256sum) { should eq 'e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb' }
end

# using sha256: 8241565a66829380c0c849b5bdaf1755904a1f2cd308597361f24fb4f47f0a8b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/7/studi/jsdscon
describe file("#{file_name}/arc/condiv/7/studi/jsdscon") do
  its(:sha256sum) { should eq '8241565a66829380c0c849b5bdaf1755904a1f2cd308597361f24fb4f47f0a8b' }
end

# using sha256: e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/7/studi/jsdscon.idx
describe file("#{file_name}/arc/condiv/7/studi/jsdscon.idx") do
  its(:sha256sum) { should eq 'e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb' }
end

# using sha256: e7b8f725e0cf8dd9cc219d2878bc56065350d153f1260bb3624b82f6f5307052 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon
describe file("#{file_name}/arc/condiv/jvalcon") do
  its(:sha256sum) { should eq 'e7b8f725e0cf8dd9cc219d2878bc56065350d153f1260bb3624b82f6f5307052' }
end

# using sha256: 736efdd744358ee908d805fa77d790f629e4f48262d76b12a204b29c50e0c452 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon.idx
describe file("#{file_name}/arc/condiv/jvalcon.idx") do
  its(:sha256sum) { should eq '736efdd744358ee908d805fa77d790f629e4f48262d76b12a204b29c50e0c452' }
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

# using sha256: 9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored
describe file("#{file_name}/dtb/tabelle/6/cont/pacored") do
  its(:sha256sum) { should eq '9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c' }
end

# using sha256: d628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored.idx
describe file("#{file_name}/dtb/tabelle/6/cont/pacored.idx") do
  its(:sha256sum) { should eq 'd628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195' }
end

# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau
describe file("#{file_name}/dtb/tabelle/6/red/jadconau") do
  its(:sha256sum) { should eq 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075' }
end

# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau.idx
describe file("#{file_name}/dtb/tabelle/6/red/jadconau.idx") do
  its(:sha256sum) { should eq 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42' }
end

# using sha256: b82cb58313ba5443d7733844ea1f53b8d725c3003d5fe3d5c30a5b0f075c8f5d * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored
describe file("#{file_name}/dtb/tabelle/7/cont/pacored") do
  its(:sha256sum) { should eq 'b82cb58313ba5443d7733844ea1f53b8d725c3003d5fe3d5c30a5b0f075c8f5d' }
end

# using sha256: e7c08390e0cdea0bf3074e926eca6d2292ca5f8250e9e337d7a19051fa5dcf7c * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored.idx
describe file("#{file_name}/dtb/tabelle/7/cont/pacored.idx") do
  its(:sha256sum) { should eq 'e7c08390e0cdea0bf3074e926eca6d2292ca5f8250e9e337d7a19051fa5dcf7c' }
end

# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau
describe file("#{file_name}/dtb/tabelle/7/red/jadconau") do
  its(:sha256sum) { should eq 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075' }
end

# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau.idx
describe file("#{file_name}/dtb/tabelle/7/red/jadconau.idx") do
  its(:sha256sum) { should eq 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42' }
end

# using sha256: fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
describe file("#{file_name}/dtb/tabelle/base/pconst") do
  its(:sha256sum) { should eq 'fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47' }
end

# using sha256: 8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
describe file("#{file_name}/dtb/tabelle/base/pconst.idx") do
  its(:sha256sum) { should eq '8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a' }
end

# using sha256: c7312d5d2c83c06a87df62cf10d6570ed37742b97861efd611ed2e49270b4560 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut
describe file("#{file_name}/dtb/tabelle/base/pdcaut") do
  its(:sha256sum) { should eq 'c7312d5d2c83c06a87df62cf10d6570ed37742b97861efd611ed2e49270b4560' }
end

# using sha256: 0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut.idx
describe file("#{file_name}/dtb/tabelle/base/pdcaut.idx") do
  its(:sha256sum) { should eq '0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7' }
end

# using sha256: 0a5f4af3b965c46e7991f11957be1971c75ebd4b94bce5628f7a7088545cf7da * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcedit
describe file("#{file_name}/dtb/tabelle/base/pdcedit") do
  its(:sha256sum) { should eq '0a5f4af3b965c46e7991f11957be1971c75ebd4b94bce5628f7a7088545cf7da' }
end

# using sha256: 941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcedit.idx
describe file("#{file_name}/dtb/tabelle/base/pdcedit.idx") do
  its(:sha256sum) { should eq '941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b' }
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
