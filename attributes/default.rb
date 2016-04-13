#node.default['nagios']['server']['web_server'] = 'nginx'
default['nagios']['conf']['interval_length'] = 1
#default['nagios']['default_service']['notification_interval'] = 0
node.default['apache']['mpm'] = 'prefork'
default['zip_monitor']['additional_packages'] = %w{nagcon nagios-plugins nagios-plugins-contrib}
default['zip_monitor']['install_plugins'] = %w{check_flume_node.sh check_flume_node_status.sh check_hadoop_datanodes.rb check_hadoop_tasktracker.sh check_hbase.rb hadoop_jmx.rb}
default['ganglia']['enable_rrdcached'] = true
default['ganglia']['unicast'] = true
default['ganglia']['server_role'] = 'monitoring'
default['ganglia']['clusterport'] = {
  "default" => 18649,
  "manager" => 18650,
  "worker" => 18651
}
