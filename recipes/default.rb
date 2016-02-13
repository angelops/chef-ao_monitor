#
# Cookbook Name:: zip_monitor
# Recipe:: default
#
# Copyright (C) 2015 Justin Alan Ryan (ZipRealty / Realogy)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'apache2'
include_recipe 'postfix'
include_recipe 'nagios'
include_recipe 'ganglia::gmetad'
include_recipe 'ganglia::gmond_collector'
include_recipe 'ganglia::web'

# https://sethvargo.com/using-gems-with-chef/
# https://github.com/adamsb6/s3_file/pull/36/files

package 'build-essential' do
  action :nothing
end.run_action(:install)

chef_gem 'rest-client' # wtf?

node['zip_monitor']['install_plugins'].each do |plugin|
  cookbook_file node['nagios']['plugin_dir'] + '/' + plugin do
    source plugin
    mode '0755'
    action :create
  end
end

#include_recipe 'flapjack'

#package 'python-pip'
easy_install_package 'nagios-mesos'

