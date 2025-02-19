showmount -e 192.168.0.100
/nfsshare 192.168.0.101

mount -t nfs 192.168.0.100:/nfsshare /mnt/nfsshare
mount | grep nfs
sunrpc on /var/lib/nfs/rpc_pipefs type rpc_pipefs (rw)
nfsd on /proc/fs/nfsd type nfsd (rw)
192.168.0.100:/nfsshare on /mnt type nfs (rw,addr=192.168.0.100)

ll /mnt/nfsshare
-rw-r--r-- 1 root root 61 Sep 21 21:44 nfstest.txt
cat /mnt/nfsshare/nfstest.tx

umount /mnt/nfsshare
df -h -F nfs
