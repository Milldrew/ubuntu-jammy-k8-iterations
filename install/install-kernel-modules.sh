tee /etc/modules-load.d/containerd.conf <<EOF
overlay
br_netfilter
EOF


modprobe overlay
modprobe br_netfilter

tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF


#apply changes
sysctl --system
