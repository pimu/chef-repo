#depends "nfs"

directory '/var/nfs_share' do
#  owner 'root'\par
#  group 'root'\par
#  mode '0755'\par
  action :create
end

#mount '/var/nfs_share/' do
#  device '10.11.0.49:/var/chef_share/'
#  fstype 'nfs'
#  options 'ro'
#  action [:mount, :enable]
#end

#definisce la lista di province, fa intersezione con ls di usr2 e copia #ricorsivamente il contenuto di nfs dtb/tabelle\par

provlist=['an','bo','bs','bz','co','fc','fe','il','mc','mn','mo','pc','pr','pv','pu','ra','re','rn','ro']

#Dir['/usr2/*'] & provlist.each do |file_name|
#directory "/usr/tmp/test/tabelle" do
#  action :create
#end


remote_directory "/usr/tmp/test/tabelle/doc-base" do
#source "file:/var/nfs_share/tabelle/dtb/tabelle"
source 'doc-base'
end


