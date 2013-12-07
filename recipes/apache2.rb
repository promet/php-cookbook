#
# Cookbook Name:: promet_php
# Recipe:: apache2
#
# Copyright 2013, Promet Solutions, Inc.
#
# All rights reserved - Redistribute
#

include_recipe 'php'

case node[:platform]
  when "ubuntu","debian","default"
    template "/etc/php5/apache2/php.ini" do
    source "php.ini.erb"
    owner "root"
    group 0
    mode 00644
  end
  when "centos","redhat"
    template "/etc/php.ini" do
    source "php.ini.erb"
    owner "root"
    group 0
    mode 00644
  end
end
