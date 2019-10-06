

#connect to synology within network from cli
sudo mount -t nfs -o nfsvers=4.1 jace-cloud.local:/volumeUSB1/usbshare /home/jace/Jace_Docs

#connect to synology within network with /etc/fstab
jace-cloud.local:/volumeUSB1/usbshare	/home/jace/Jace_Docs	nfs	nfsvers=4.1,defaults,comment=systemd.automount	0 0

#connect to synology remotely on debian
dav://jacemanshadi.synology.me:5005 -> HTTP
da6://jacemanshadi.synology.me:5006 -> HTTPS


 1554  sudo showmount jace-cloud -e
 1562  sudo mount -t nfs -o gid=1000,uid=1000 jace-cloud.local:/volumeUSB1/usbshare /home/jace/Jace_Docs
 1563  man mount
 1565  sudo mount -t nfs  jace-cloud.local:/volumeUSB1/usbshare /home/jace/Jace_Docs
 1567  sudo umount Jace_Docs
 1569  sudo mount -t nfs -o gid=1000,uid=1000 jace-cloud.local:/volumeUSB1/usbshare /home/jace/Jace_Docs
 1570  sudo mount -t nfs -o nfsvers=4.1,gid=1000,uid=1000 jace-cloud.local:/volumeUSB1/usbshare /home/jace/Jace_Docs
 1571  sudo mount -t nfs -o nfsvers=4.1 jace-cloud.local:/volumeUSB1/usbshare /home/jace/Jace_Docs

