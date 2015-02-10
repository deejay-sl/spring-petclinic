name "test"
description "Test"
#cookbook OR cookbook_versions  "cookbook" OR "cookbook" => "cookbook_version"
override_attributes(
	"base_folder" => "/var/chef-solo",
	"tomcat_user_username" => "tomcat_test",
	"tomcat_user_password" => "t0mc@t"
)