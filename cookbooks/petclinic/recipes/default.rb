bash "build-source" do 

	cwd "/vagrant"
	code <<-EOH
		mvn -f pom_provision_demo.xml clean
		mvn -f pom_provision_demo.xml compile
		mvn -f pom_provision_demo.xml test
		mvn -f pom_provision_demo.xml package
	EOH
	action :run

end