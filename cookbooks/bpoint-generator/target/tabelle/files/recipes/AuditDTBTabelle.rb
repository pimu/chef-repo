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








# using sha256: fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
    control "#{file_name}/dtb/tabelle/base/pconst" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst").hexdigest  }

      it "/dtb/tabelle/base/pconst should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/fb021f301617f78a5c370621b7af4a5303492e10e46551a6c4127e39377a6a47/)
      end
    end



# using sha256: 8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
    control "#{file_name}/dtb/tabelle/base/pconst.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst.idx").hexdigest  }

      it "/dtb/tabelle/base/pconst.idx should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/8a7b2612fe4e9dd52557790bd4e6ce26cacd3e573260625f83a109cb158ff83a/)
      end
    end



# using sha256: 7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
    control "#{file_name}/dtb/tabelle/cont/bilabbi" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/7eeede605f1c70158ca1abbae6caf87aa5b211250f7968e141d33cb493af35cc/)
      end
    end



# using sha256: 823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
    control "#{file_name}/dtb/tabelle/cont/bilabbi.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi.idx").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi.idx should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/823c240aab4186b7b64d14e55f7753db4d8b48ac0a138d915472d92833171dbc/)
      end
    end




end

end
end
