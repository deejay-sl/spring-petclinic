bash "build-source" do 

	cwd "#{node[:base_folder]}"
	code <<-EOH
		mvn -f pom_provision_demo.xml clean
		mvn -f pom_provision_demo.xml compile
		mvn -f pom_provision_demo.xml test
		mvn -f pom_provision_demo.xml package
	EOH
	action :run

end

=begin
template "#{node[:base_folder]}" do
	source "logback.xml.erb"
	user "root"
	group "root"	
end
=end