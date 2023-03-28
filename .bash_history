useradd -s /bin/bash -m -d /home/aluno -c"Aluno" aluno
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config 
cat /etc/ssh/sshd_config grep PasswordAuthentication
cat /etc/ssh/sshd_config | grep PasswordAuthentication
clear
sed -i "s/ssh_pwauth: false/ssh_pwauth: true/" /etc/cloud/cloud.cfg.d/00_defaults.cfg
cd /etc/cloud/
ls
vi cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth: false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth:  false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth: .false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth: \+false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth:   0/ssh_pwauth: 1/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
echo "PasswordAuthentication yes" >> /etc/ssh/ssh_config.d/05-redhat.conf
cd /etc/ssh
grep PasswordA *
systemctl restart sshd 
echo -e "linux1234\nlinux1234" | (passwd aluno)
echo $temp[0]
chage -d 0 aluno
echo "aluno ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/aluno
exit
useradd -s /bin/bash -m -d /home/terminal -c"Terminal Web" terminal
echo -e "linux1234\nlinux1234" | (passwd aluno)
echo -e "alshg7654YFGuFYVf\nalshg7654YFGuFYVf" | (passwd terminal)
chage -d 0 aluno
echo "terminal ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/terminal
