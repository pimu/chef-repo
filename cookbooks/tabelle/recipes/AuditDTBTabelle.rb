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






# using sha256: e449438f5114adc588bfc037071e90d0100e6a6c167a1b4868691d96f5dce6a9 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/costant
    control "#{file_name}/arc/condiv/costant" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/costant").hexdigest  }

      it "/arc/condiv/costant should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/e449438f5114adc588bfc037071e90d0100e6a6c167a1b4868691d96f5dce6a9/)
      end
    end



# using sha256: 11ef7434b9e33cb522158936c48e0461c9c5fa028a3adf81438f23d09f41997b * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/arc/condiv/costant.idx
    control "#{file_name}/arc/condiv/costant.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/costant.idx").hexdigest  }

      it "/arc/condiv/costant.idx should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/11ef7434b9e33cb522158936c48e0461c9c5fa028a3adf81438f23d09f41997b/)
      end
    end





# using sha256: d1dc7e436d58e79c4c7c0e0c9803538092fbe83e1d0f74b09f2b4da091914e1f * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
    control "#{file_name}/dtb/tabelle/base/pconst" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst").hexdigest  }

      it "/dtb/tabelle/base/pconst should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/d1dc7e436d58e79c4c7c0e0c9803538092fbe83e1d0f74b09f2b4da091914e1f/)
      end
    end



# using sha256: ef13b5a1fcc64c4b1eb828bcf1d25de5356a66518f642705ddb6d46a31c7edee * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
    control "#{file_name}/dtb/tabelle/base/pconst.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst.idx").hexdigest  }

      it "/dtb/tabelle/base/pconst.idx should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/ef13b5a1fcc64c4b1eb828bcf1d25de5356a66518f642705ddb6d46a31c7edee/)
      end
    end



# using sha256: 4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut
    control "#{file_name}/dtb/tabelle/base/pdcaut" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pdcaut").hexdigest  }

      it "/dtb/tabelle/base/pdcaut should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/4c853497e0739b20f60c24d2bd5841a3638b3b8fd84722ca957aa6de258ee90a/)
      end
    end



# using sha256: 0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pdcaut.idx
    control "#{file_name}/dtb/tabelle/base/pdcaut.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pdcaut.idx").hexdigest  }

      it "/dtb/tabelle/base/pdcaut.idx should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/0364d5b13ba648cb73cc8a0038ca9eceb09ed06bf48fb92ec55070a59b1ee2c7/)
      end
    end



# using sha256: 00dbfb395e56f15f054783933b88fc685b7ca3ab2675732efd907ad78b5ca6a8 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
    control "#{file_name}/dtb/tabelle/cont/bilabbi" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/00dbfb395e56f15f054783933b88fc685b7ca3ab2675732efd907ad78b5ca6a8/)
      end
    end



# using sha256: 69387783a7d947d303ad57044fd65cb3345fd777f808efe63249bc01859b27a8 * MUNARIW8 C:/Work/Projects/chef/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
    control "#{file_name}/dtb/tabelle/cont/bilabbi.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi.idx").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi.idx should be 'ba952b78e7e565aeed852041f10fa8b179558bad0a4c7215eb55f6a9daeaea18'" do
        expect(thisfile_sha256).to match(/69387783a7d947d303ad57044fd65cb3345fd777f808efe63249bc01859b27a8/)
      end
    end




end

end
end
