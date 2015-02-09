file_cache_path   	"/var/chef/cache"
file_backup_path  	"/var/chef/backup"

root = File.absolute_path(File.dirname(__FILE__))
file_cache_path root

environment_path	root + "/environments"
cookbook_path 		root + '/cookbooks'

if Chef::VERSION.to_f < 11.8
  role_path nil
else
  role_path []
end

log_level :info
verbose_logging    "true"

environment "test"

encrypted_data_bag_secret nil