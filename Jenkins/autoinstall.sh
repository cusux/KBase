#!/bin/bash

yum update -y
yum install -y epel-release
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum update -y
yum install -y jenkins java-1.8.0-openjdk nginx telnet net-tools wget setroubleshoot-server selinux-policy-devel

systemctl enable jenkins; systemctl start jenkins && systemctl status jenkins

vi /etc/nginx/nginx.conf
systemctl enable nginx && systemctl start nginx && systemctl status nginx

semanage port -a -t http_port_t -p tcp 8080
wget http://localhost
wget http://localhost
wget http://localhost
grep nginx /var/log/audit/audit.log | audit2allow -M nginx
semodule -i nginx.pp

systemctl restart jenkins nginx
