# Disable swap files
swapoff -a
sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab # add # to the swap line in fstab any linke with swap in it

