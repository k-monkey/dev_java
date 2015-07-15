#
# Cookbook Name:: dev_java
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

group node['dev_java']['group'] 

user node['dev_java']['user'] do
  group node['dev_java']['group'] 
  system true
  shell '/bin/bash'
end

include_recipe 'apache2'
include_recipe 'maven'
include_recipe 'java'
