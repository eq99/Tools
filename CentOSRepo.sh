#backup
cd /etc/yum.repos.d/
mv CentOS-Base.repo CentOS-Base.repo.backup
curl -fsSL http://mirrors.aliyun.com/repo/Centos-7.repo -o CentOS-Base.repo
yum clean all 
yum makecache 
yum update
