name "test"
description "Test"
#cookbook OR cookbook_versions  "cookbook" OR "cookbook" => "cookbook_version"
override_attributes(
	"base_folder" => "/var/chef-solo",
	"log_level" => "warn"
)