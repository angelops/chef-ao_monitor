#node.default['nagios']['server']['web_server'] = 'nginx'
default['nagios']['conf']['interval_length'] = 1
node.default['apache']['mpm'] = 'prefork'
default['zip_monitor']['additional_packages'] = %w{nagcon nagios-plugins nagios-plugins-contrib}
default['zip_monitor']['install_plugins'] = %w{files/default/check_flume_node.sh check_flume_node_status.sh check_hadoop_datanodes.rb check_hadoop_tasktracker.sh check_hbase.rb hadoop_jmx.rb}
