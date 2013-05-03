#
# Cookbook Name:: elife-ga-dependencies
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# update nginx
package "nginx" do
  action :upgrade
end

# example using pip to install packages
# pip should be installed by the default python cookbook
pip_packages = "requests==0.13.0","lxml","beautifulsoup4","fom","lettuce","boto","nose"

pip_packages.each do |elife_pip_pack|
        python_pip elife_pip_pack do
                action :install
        end
end

# examples using apt-get install methods
# check using base apt method for installing
# ipython docs reccomend apt-get, so we follow their lead
package "ipython-notebook" do
  action :install
end

package "python-matplotlib" do
  action :install
end

package "python-scipy" do
  action :install
end

package "python-pandas" do
  action :install
end

package "python-sympy" do
  action :install
end