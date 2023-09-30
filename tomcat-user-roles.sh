<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
<user username="admin" password="s3cret" roles="manager-script, manager-gui, admin-gui"/>
<user username="tomcat" password="s3cret" roles="manager-gui"/>