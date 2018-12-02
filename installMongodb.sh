# write .repo file
echo "[mongodb-org-4.0] \n
name=MongoDB Repository \n
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.0/x86_64/ \n
gpgcheck=1 \n
enabled=1 \n
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" >> /etc/yum.repos.d/mongodb-org-4.0.repo

#Install the MongoDB

yum install -y mongodb-org
