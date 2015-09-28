#node.default['nagios']['server']['web_server'] = 'nginx'
node.default['apache']['mpm'] = 'prefork'
default['zip_monitor']['additional_packages'] = %w{nagcon nagios-plugins nagios-plugins-contrib}
