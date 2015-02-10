template "#{node[:base_folder]}/target/tomcat/conf/tomcat-users.xml" do
	source "tomcat-users.xml.erb"
	user "root"
	group "root"	
end
