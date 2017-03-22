#
# Cookbook Name:: tabelle
# Recipe:: AuditDTBTabelle
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


#definisce la lista di province, fa intersezione con ls di usr2 e copia #ricorsivamente il contenuto di nfs dtb/tabelle

provlist=['/usr2/an','/usr2/bo','/usr2/bs','/usr2/bz','/usr2/co','/usr2/fc','/usr2/fe','/usr2/gr','/usr2/il','/usr2/mc','/usr2/mn','/usr2/mo','/usr2/pc','/usr2/pr','/usr2/pv','/usr2/pu','/usr2/ra','/usr2/re','/usr2/rn','/usr2/ro','/usr2/umbria']


case node[:platform]
when 'redhat', 'centos'

control_group 'Audit Mode tabelle' do

  (Dir['/usr2/*'] & provlist).each do |file_name|








# using sha256: 9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored
    control "#{file_name}/dtb/tabelle/6/cont/pacored" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/cont/pacored").hexdigest  }

      it "/dtb/tabelle/6/cont/pacored should be '9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c'" do
        expect(thisfile_sha256).to match(/9148d68db9aa823648fe5cd3121b2ac362cc525c369ab4564c8cb61d1190687c/)
      end
    end



# using sha256: d628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/cont/pacored.idx
    control "#{file_name}/dtb/tabelle/6/cont/pacored.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/cont/pacored.idx").hexdigest  }

      it "/dtb/tabelle/6/cont/pacored.idx should be 'd628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195'" do
        expect(thisfile_sha256).to match(/d628f372147308584f9026d80735712ba8a66452a9568a57d73020cc62a89195/)
      end
    end



# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau
    control "#{file_name}/dtb/tabelle/6/red/jadconau" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/red/jadconau").hexdigest  }

      it "/dtb/tabelle/6/red/jadconau should be 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075'" do
        expect(thisfile_sha256).to match(/cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075/)
      end
    end



# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/6/red/jadconau.idx
    control "#{file_name}/dtb/tabelle/6/red/jadconau.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/6/red/jadconau.idx").hexdigest  }

      it "/dtb/tabelle/6/red/jadconau.idx should be 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42'" do
        expect(thisfile_sha256).to match(/cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42/)
      end
    end



# using sha256: 49478df93e09d8d70e153c6aaa5892577e239a6ff3316efa68dece224ceb6b9e *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored
    control "#{file_name}/dtb/tabelle/7/cont/pacored" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/cont/pacored").hexdigest  }

      it "/dtb/tabelle/7/cont/pacored should be '49478df93e09d8d70e153c6aaa5892577e239a6ff3316efa68dece224ceb6b9e'" do
        expect(thisfile_sha256).to match(/49478df93e09d8d70e153c6aaa5892577e239a6ff3316efa68dece224ceb6b9e/)
      end
    end



# using sha256: 8fd9c4dcfb1da2df131cd658e432aa5fa6d2c0a41636c4516455776f841aa029 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/cont/pacored.idx
    control "#{file_name}/dtb/tabelle/7/cont/pacored.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/cont/pacored.idx").hexdigest  }

      it "/dtb/tabelle/7/cont/pacored.idx should be '8fd9c4dcfb1da2df131cd658e432aa5fa6d2c0a41636c4516455776f841aa029'" do
        expect(thisfile_sha256).to match(/8fd9c4dcfb1da2df131cd658e432aa5fa6d2c0a41636c4516455776f841aa029/)
      end
    end



# using sha256: cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau
    control "#{file_name}/dtb/tabelle/7/red/jadconau" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/red/jadconau").hexdigest  }

      it "/dtb/tabelle/7/red/jadconau should be 'cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075'" do
        expect(thisfile_sha256).to match(/cfc747391aa3199cda6aa8ecd492751b06ce34751689d4e49b4938d793dac075/)
      end
    end



# using sha256: cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/7/red/jadconau.idx
    control "#{file_name}/dtb/tabelle/7/red/jadconau.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/7/red/jadconau.idx").hexdigest  }

      it "/dtb/tabelle/7/red/jadconau.idx should be 'cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42'" do
        expect(thisfile_sha256).to match(/cfb5c12af1dd2a55b1bb28deea5d493dcc05306627175d9bae5e364fcde83b42/)
      end
    end



# using sha256: 41e6a5cf7fd134c49c0097e898dc28c5da0912bea4192baa57aeb38c0baf23db *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
    control "#{file_name}/dtb/tabelle/base/pconst" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst").hexdigest  }

      it "/dtb/tabelle/base/pconst should be '41e6a5cf7fd134c49c0097e898dc28c5da0912bea4192baa57aeb38c0baf23db'" do
        expect(thisfile_sha256).to match(/41e6a5cf7fd134c49c0097e898dc28c5da0912bea4192baa57aeb38c0baf23db/)
      end
    end



# using sha256: 3c0603bac287f7cee455491b8acbbf71462d10b444fa659861f711d54991795f *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
    control "#{file_name}/dtb/tabelle/base/pconst.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst.idx").hexdigest  }

      it "/dtb/tabelle/base/pconst.idx should be '3c0603bac287f7cee455491b8acbbf71462d10b444fa659861f711d54991795f'" do
        expect(thisfile_sha256).to match(/3c0603bac287f7cee455491b8acbbf71462d10b444fa659861f711d54991795f/)
      end
    end



# using sha256: e36c2544b3d7f3190abc107fd6c90f6b77154d5003f186de82545a7133287679 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
    control "#{file_name}/dtb/tabelle/cont/bilabbi" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi should be 'e36c2544b3d7f3190abc107fd6c90f6b77154d5003f186de82545a7133287679'" do
        expect(thisfile_sha256).to match(/e36c2544b3d7f3190abc107fd6c90f6b77154d5003f186de82545a7133287679/)
      end
    end



# using sha256: 1bb94601764a555cf3d50b4730108cdf8187a2b0ca70de725801a15c3cc56a4c *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
    control "#{file_name}/dtb/tabelle/cont/bilabbi.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi.idx").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi.idx should be '1bb94601764a555cf3d50b4730108cdf8187a2b0ca70de725801a15c3cc56a4c'" do
        expect(thisfile_sha256).to match(/1bb94601764a555cf3d50b4730108cdf8187a2b0ca70de725801a15c3cc56a4c/)
      end
    end




end

end
end
