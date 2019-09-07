

%include ./kickstarts_mirror/fedora-live-cinnamon.ks



%packages

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

%end

#%post --nochroot
#cp /home/matthias/.bashrc $INSTALL_ROOT/root/
#%end
