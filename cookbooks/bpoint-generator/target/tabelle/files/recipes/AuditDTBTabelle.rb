#
# Cookbook Name:: tabelle
# Recipe:: AuditDTBTabelle
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


#definisce la lista di province, fa intersezione con ls di usr2 e copia #ricorsivamente il contenuto di nfs dtb/tabelle

provlist=['/usr2/an','/usr2/bo','/usr2/bs','/usr2/bz','/usr2/co','/usr2/fc','/usr2/fe','/usr2/il','/usr2/mc','/usr2/mn','/usr2/mo','/usr2/pc','/usr2/pr','/usr2/pv','/usr2/pu','/usr2/ra','/usr2/re','/usr2/rn','/usr2/ro','/usr2/umbria']


case node[:platform]
when 'redhat', 'centos'

control_group 'Audit Mode tabelle' do

  (Dir['/usr2/*'] & provlist).each do |file_name|






# using sha256: ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/6/studi/jsdscon
    control "#{file_name}/arc/condiv/6/studi/jsdscon" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/6/studi/jsdscon").hexdigest  }

      it "/arc/condiv/6/studi/jsdscon should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18/)
      end
    end



# using sha256: e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/6/studi/jsdscon.idx
    control "#{file_name}/arc/condiv/6/studi/jsdscon.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/6/studi/jsdscon.idx").hexdigest  }

      it "/arc/condiv/6/studi/jsdscon.idx should be 'e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb'" do
        expect(thisfile_sha256).to match(/e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb/)
      end
    end



# using sha256: ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/7/studi/jsdscon
    control "#{file_name}/arc/condiv/7/studi/jsdscon" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/7/studi/jsdscon").hexdigest  }

      it "/arc/condiv/7/studi/jsdscon should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18/)
      end
    end



# using sha256: e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/7/studi/jsdscon.idx
    control "#{file_name}/arc/condiv/7/studi/jsdscon.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/7/studi/jsdscon.idx").hexdigest  }

      it "/arc/condiv/7/studi/jsdscon.idx should be 'e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb'" do
        expect(thisfile_sha256).to match(/e591f4c138dda2647d1315fed124e72d0d4ac5f6256b4f76140d2205b86f8beb/)
      end
    end



# using sha256: e7b8f725e0cf8dd9cc219d2878bc56065350d153f1260bb3624b82f6f5307052 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon
    control "#{file_name}/arc/condiv/jvalcon" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/jvalcon").hexdigest  }

      it "/arc/condiv/jvalcon should be 'e7b8f725e0cf8dd9cc219d2878bc56065350d153f1260bb3624b82f6f5307052'" do
        expect(thisfile_sha256).to match(/e7b8f725e0cf8dd9cc219d2878bc56065350d153f1260bb3624b82f6f5307052/)
      end
    end



# using sha256: 736efdd744358ee908d805fa77d790f629e4f48262d76b12a204b29c50e0c452 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon.idx
    control "#{file_name}/arc/condiv/jvalcon.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/jvalcon.idx").hexdigest  }

      it "/arc/condiv/jvalcon.idx should be '736efdd744358ee908d805fa77d790f629e4f48262d76b12a204b29c50e0c452'" do
        expect(thisfile_sha256).to match(/736efdd744358ee908d805fa77d790f629e4f48262d76b12a204b29c50e0c452/)
      end
    end





# using sha256: 1fc26b59535e059324d049da38b776fce57641793ec43af1c54078e3fd03d45d * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/cont/pacored
    control "#{file_name}/dtb/tabelle/5/cont/pacored" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/5/cont/pacored").hexdigest  }

      it "/dtb/tabelle/5/cont/pacored should be '1fc26b59535e059324d049da38b776fce57641793ec43af1c54078e3fd03d45d'" do
        expect(thisfile_sha256).to match(/1fc26b59535e059324d049da38b776fce57641793ec43af1c54078e3fd03d45d/)
      end
    end



# using sha256: 038424643873857f56d34222bf93804e487755a5e9c469bd9de0db15bc153112 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/cont/pacored.idx
    control "#{file_name}/dtb/tabelle/5/cont/pacored.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/5/cont/pacored.idx").hexdigest  }

      it "/dtb/tabelle/5/cont/pacored.idx should be '038424643873857f56d34222bf93804e487755a5e9c469bd9de0db15bc153112'" do
        expect(thisfile_sha256).to match(/038424643873857f56d34222bf93804e487755a5e9c469bd9de0db15bc153112/)
      end
    end



# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/red/jadconau
    control "#{file_name}/dtb/tabelle/5/red/jadconau" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/5/red/jadconau").hexdigest  }

      it "/dtb/tabelle/5/red/jadconau should be 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075'" do
        expect(thisfile_sha256).to match(/cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075/)
      end
    end



# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/5/red/jadconau.idx
    control "#{file_name}/dtb/tabelle/5/red/jadconau.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/5/red/jadconau.idx").hexdigest  }

      it "/dtb/tabelle/5/red/jadconau.idx should be 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42'" do
        expect(thisfile_sha256).to match(/cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42/)
      end
    end



# using sha256: 9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored
    control "#{file_name}/dtb/tabelle/6/cont/pacored" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/cont/pacored").hexdigest  }

      it "/dtb/tabelle/6/cont/pacored should be '9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c'" do
        expect(thisfile_sha256).to match(/9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c/)
      end
    end



# using sha256: d628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored.idx
    control "#{file_name}/dtb/tabelle/6/cont/pacored.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/cont/pacored.idx").hexdigest  }

      it "/dtb/tabelle/6/cont/pacored.idx should be 'd628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195'" do
        expect(thisfile_sha256).to match(/d628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195/)
      end
    end



# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau
    control "#{file_name}/dtb/tabelle/6/red/jadconau" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/red/jadconau").hexdigest  }

      it "/dtb/tabelle/6/red/jadconau should be 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075'" do
        expect(thisfile_sha256).to match(/cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075/)
      end
    end



# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau.idx
    control "#{file_name}/dtb/tabelle/6/red/jadconau.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/red/jadconau.idx").hexdigest  }

      it "/dtb/tabelle/6/red/jadconau.idx should be 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42'" do
        expect(thisfile_sha256).to match(/cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42/)
      end
    end



# using sha256: b82cb58313ba5443d7733844ea1f53b8d725c3003d5fe3d5c30a5b0f075c8f5d * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored
    control "#{file_name}/dtb/tabelle/7/cont/pacored" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/cont/pacored").hexdigest  }

      it "/dtb/tabelle/7/cont/pacored should be 'b82cb58313ba5443d7733844ea1f53b8d725c3003d5fe3d5c30a5b0f075c8f5d'" do
        expect(thisfile_sha256).to match(/b82cb58313ba5443d7733844ea1f53b8d725c3003d5fe3d5c30a5b0f075c8f5d/)
      end
    end



# using sha256: e7c08390e0cdea0bf3074e926eca6d2292ca5f8250e9e337d7a19051fa5dcf7c * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored.idx
    control "#{file_name}/dtb/tabelle/7/cont/pacored.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/cont/pacored.idx").hexdigest  }

      it "/dtb/tabelle/7/cont/pacored.idx should be 'e7c08390e0cdea0bf3074e926eca6d2292ca5f8250e9e337d7a19051fa5dcf7c'" do
        expect(thisfile_sha256).to match(/e7c08390e0cdea0bf3074e926eca6d2292ca5f8250e9e337d7a19051fa5dcf7c/)
      end
    end



# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau
    control "#{file_name}/dtb/tabelle/7/red/jadconau" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/red/jadconau").hexdigest  }

      it "/dtb/tabelle/7/red/jadconau should be 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075'" do
        expect(thisfile_sha256).to match(/cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075/)
      end
    end



# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau.idx
    control "#{file_name}/dtb/tabelle/7/red/jadconau.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/red/jadconau.idx").hexdigest  }

      it "/dtb/tabelle/7/red/jadconau.idx should be 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42'" do
        expect(thisfile_sha256).to match(/cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42/)
      end
    end



# using sha256: fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
    control "#{file_name}/dtb/tabelle/base/pconst" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst").hexdigest  }

      it "/dtb/tabelle/base/pconst should be 'fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47'" do
        expect(thisfile_sha256).to match(/fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47/)
      end
    end



# using sha256: 8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
    control "#{file_name}/dtb/tabelle/base/pconst.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst.idx").hexdigest  }

      it "/dtb/tabelle/base/pconst.idx should be '8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a'" do
        expect(thisfile_sha256).to match(/8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a/)
      end
    end



# using sha256: 4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut
    control "#{file_name}/dtb/tabelle/base/pdcaut" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pdcaut").hexdigest  }

      it "/dtb/tabelle/base/pdcaut should be '4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a'" do
        expect(thisfile_sha256).to match(/4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a/)
      end
    end



# using sha256: 0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut.idx
    control "#{file_name}/dtb/tabelle/base/pdcaut.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pdcaut.idx").hexdigest  }

      it "/dtb/tabelle/base/pdcaut.idx should be '0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7'" do
        expect(thisfile_sha256).to match(/0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7/)
      end
    end



# using sha256: eb811b02858c5e5f100b1802f7b34a6c83baa11e542a767d8bb295d6fb71c829 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcedit
    control "#{file_name}/dtb/tabelle/base/pdcedit" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pdcedit").hexdigest  }

      it "/dtb/tabelle/base/pdcedit should be 'eb811b02858c5e5f100b1802f7b34a6c83baa11e542a767d8bb295d6fb71c829'" do
        expect(thisfile_sha256).to match(/eb811b02858c5e5f100b1802f7b34a6c83baa11e542a767d8bb295d6fb71c829/)
      end
    end



# using sha256: 941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcedit.idx
    control "#{file_name}/dtb/tabelle/base/pdcedit.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pdcedit.idx").hexdigest  }

      it "/dtb/tabelle/base/pdcedit.idx should be '941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b'" do
        expect(thisfile_sha256).to match(/941c4ea65a7a05b6df493bc6ee6e2ca9ba8bdb0c341c492abbc3a1231f18809b/)
      end
    end



# using sha256: 7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
    control "#{file_name}/dtb/tabelle/cont/bilabbi" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi should be '7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc'" do
        expect(thisfile_sha256).to match(/7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc/)
      end
    end



# using sha256: 823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
    control "#{file_name}/dtb/tabelle/cont/bilabbi.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi.idx").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi.idx should be '823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc'" do
        expect(thisfile_sha256).to match(/823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc/)
      end
    end




end

end
end
