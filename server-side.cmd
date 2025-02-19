yum install nfs-utils nfs-utils-lib
yum install portmap (not required with NFSv4)
apt-get install nfs-utils nfs-utils-lib

/etc/init.d/portmap start
/etc/init.d/nfs start
chkconfig --level 35 portmap on
chkconfig --level 35 nfs on

mkdir /nfsshare
vi /etc/exports
/nfsshare 192.168.0.101(rw,sync,no_root_squash)

cat > /nfsshare/nfstest.txt
