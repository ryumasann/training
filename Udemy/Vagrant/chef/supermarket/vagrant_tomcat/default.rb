include_recipe "tomcat_lates"

file "/etc/rc.d/tomcat" do 
    action :delete
end

template "/etc/init.d/tomcat7" do
    souce "tomcatk7.erb"
end