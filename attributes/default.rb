node.default['nagios']['multi_environment_monitoring'] = true
node.default['apache']['mpm'] = 'prefork'
default['zip_monitor']['additional_packages'] = %w{nagcon nagios-plugins nagios-plugins-contrib}
