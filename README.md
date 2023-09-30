# ansible-tomcat-project
Run a playbook to install tomcat and deploy a war file at the same time.

# 1 - build .war file and push to github
mvn clean |
mvn compiler:compile |
mvn package

# 2 - (OPTIONAL) Update tomcat url in playbook to latest
On - https://tomcat.apache.org/
Downloads: select tomcat 9.
Right click on tar.gz -> copy URL and Update the playbook.

# 3 - Run playbook
Copy the playbook code and create a playbook.yml in the ansible master node
Run the playbook and watch: $ ansible-playbook playbook.yml

# 4 - Browse app
browse your webapp http://ip:8080/XYZtechnologies-1.0

# 5 - Troubleshoot tomcat daemon
if this app fail, SSH to your tomcat instance. 
check the tomcat deamon $ systemctl status tomcat
run cmd manually = $ sudo chown -R ec2-user:ec2-user /opt/tomcat 
run this cmd next = $ bash /opt/tomcat/bin/startup.sh

# 6 - Tomcat login Configuration
- Open the context.xml file and insert the user roles.
nano /opt/tomcat/webapps/host-manager/META-INF/context.xml

Scroll to the bottom at the end before /tomcat-users> add paste these roles
- Copy roles script from tomcat-user-roles.sh
- Restart tomcat
bash /opt/tomcat/bin/shutdown.sh