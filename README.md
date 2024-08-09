# Mounting the Synology Drive
  
## in (`/etc/fstab`)

### CIFS

```shell
sudo smbclient -L <ipOfCloud> -U jace # show mount information for an CIFS/SMB server

//jace-cloud/Jace_Docs	/home/jace/Jace_Docs	cifs	user,username=jace,_netdev,file_mode=0744,dir_mode=0755	0 0
//jace-cloud/NAS_Documents	/home/jace/NAS_Documents	cifs	user,username=jace,_netdev,file_mode=0744,dir_mode=0755	0 0
//jace-cloud/JACE_500GB		/home/jace/JACE_500GB		cifs	user,username=jace,_netdev,file_mode=0744,dir_mode=0755	0 0
```

### NFS

```shell
showmount -e showmount -e jace-cloud # show mount information for an NFS server

jace-cloud:/volumeUSB1/usbshare	/home/jace/Jace_Docs	nfs	defaults,async,auto,dev,exec,suid,rw,_netdev,iversion,comment=systemd.automount	0 0
jace-cloud:/volume1/NAS_Documents	/home/jace/NAS_Documents	nfs	defaults,async,auto,dev,exec,suid,rw,_netdev,iversion,comment=systemd.automount	0 0
jace-cloud:/volumeUSB1/usbshare	/home/jace/Jace_Docs	nfs	defaults,async,auto,dev,exec,suid,rw,_netdev,iversion,comment=systemd.automount	0 0
```

## in (`~/.bashrc`) / command-line
```shell
alias mountdoc='sudo mount -t cifs //jace-cloud/Jace_Docs /home/jace/Jace_Docs -o username=jace,file_mode=0744,dir_mode=0744,uid=1000,gid=1000'
alias mount500='sudo mount -t cifs //jace-cloud/JACE_500GB /home/jace/JACE_500GB -o username=jace,file_mode=0744,dir_mode=0744,uid=1000,gid=1000'
alias mountnas='sudo mount -t cifs //jace-cloud/NAS_Documents /home/jace/NAS_Documents -o username=jace,file_mode=0744,dir_mode=0744,uid=1000,gid=1000'
```
