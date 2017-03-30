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






# using sha256: a89e090592b03a2574bd6aa0d068280abf35893e18bfe820ce9a9901e111490e *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon
    control "#{file_name}/arc/condiv/jvalcon" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/jvalcon").hexdigest  }

      it "/arc/condiv/jvalcon should be 'a89e090592b03a2574bd6aa0d068280abf35893e18bfe820ce9a9901e111490e'" do
        expect(thisfile_sha256).to match(/a89e090592b03a2574bd6aa0d068280abf35893e18bfe820ce9a9901e111490e/)
      end
    end



# using sha256: a67574543583dad65b11a2b35bf4879b9d9f3fce37b6e6f4443064adb9a2f45e *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/arc/condiv/jvalcon.idx
    control "#{file_name}/arc/condiv/jvalcon.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/arc/condiv/jvalcon.idx").hexdigest  }

      it "/arc/condiv/jvalcon.idx should be 'a67574543583dad65b11a2b35bf4879b9d9f3fce37b6e6f4443064adb9a2f45e'" do
        expect(thisfile_sha256).to match(/a67574543583dad65b11a2b35bf4879b9d9f3fce37b6e6f4443064adb9a2f45e/)
      end
    end





# using sha256: 4246b0614a254606e226640462ca628489642cad9d0c43e2aa074c21a3174294 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst
    control "#{file_name}/dtb/tabelle/base/pconst" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst").hexdigest  }

      it "/dtb/tabelle/base/pconst should be '4246b0614a254606e226640462ca628489642cad9d0c43e2aa074c21a3174294'" do
        expect(thisfile_sha256).to match(/4246b0614a254606e226640462ca628489642cad9d0c43e2aa074c21a3174294/)
      end
    end



# using sha256: 249bfce4452167ab4313583002a1c3ac8249f3eb6c2333fe03346bf06c555d1b *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/base/pconst.idx
    control "#{file_name}/dtb/tabelle/base/pconst.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/base/pconst.idx").hexdigest  }

      it "/dtb/tabelle/base/pconst.idx should be '249bfce4452167ab4313583002a1c3ac8249f3eb6c2333fe03346bf06c555d1b'" do
        expect(thisfile_sha256).to match(/249bfce4452167ab4313583002a1c3ac8249f3eb6c2333fe03346bf06c555d1b/)
      end
    end



# using sha256: 622e56c89ed19e0786f9f0f3dbabb698f13911703721069251e7b1494dfd2ea8 *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi
    control "#{file_name}/dtb/tabelle/cont/bilabbi" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi should be '622e56c89ed19e0786f9f0f3dbabb698f13911703721069251e7b1494dfd2ea8'" do
        expect(thisfile_sha256).to match(/622e56c89ed19e0786f9f0f3dbabb698f13911703721069251e7b1494dfd2ea8/)
      end
    end



# using sha256: c83c665663642df7614cd13cdc605544cf0f75d677287085f7e5ed9e142b9f8c *  /home/ceccherelli/chef-repo/cookbooks/tabelle/files/default/dtb/tabelle/cont/bilabbi.idx
    control "#{file_name}/dtb/tabelle/cont/bilabbi.idx" do
      let(:thisfile_sha256) { (Digest::SHA256.file "#{file_name}/dtb/tabelle/cont/bilabbi.idx").hexdigest  }

      it "/dtb/tabelle/cont/bilabbi.idx should be 'c83c665663642df7614cd13cdc605544cf0f75d677287085f7e5ed9e142b9f8c'" do
        expect(thisfile_sha256).to match(/c83c665663642df7614cd13cdc605544cf0f75d677287085f7e5ed9e142b9f8c/)
      end
    end




end

end
end
