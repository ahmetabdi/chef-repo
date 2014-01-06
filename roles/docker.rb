name "docker"
description "Role for provisioning a docker container image with most binaries pre-installed"
run_list "recipe[docker_package]"
override_attributes( "supervisor" => { "dir" => "/etc/supervisor/conf.d" }, "nginx" => { "daemon_disable" => true }, "mysql" => { "use_upstart" => false } )