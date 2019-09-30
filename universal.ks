
# repos
url --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-30&arch=x86_64"
repo --name=fedora --mirrorlist="https://mirrors.fedoraproject.org/metalink?repo=fedora-30&arch=x86_64" --cost=0
repo --name=fedora-updates --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f30&arch=x86_64" --cost=0
repo --name=rpmfusion-free --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-30&arch=x86_64" --includepkgs=rpmfusion-free-release
repo --name=rpmfusion-free-updates --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-30&arch=x86_64" --cost=0
repo --name=rpmfusion-nonfree --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-30&arch=x86_64" --includepkgs=rpmfusion-nonfree-release
repo --name=rpmfusion-nonfree-updates --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-30&arch=x86_64" --cost=0

%packages 
###
iproute
nmap
openssh
parted
sysstat
tcpdump
tcpflow
vim
wireshark
wireshark-cli
###
%end

# remediate gui 
%include ./kickstarts_mirror/fedora-live-cinnamon.ks

keyboard de
lang en_UK


#%post --nochroot
#cp /home/matthias/.bashrc $INSTALL_ROOT/root/
#%end
