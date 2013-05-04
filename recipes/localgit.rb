#
# Cookbook Name:: elife-chef-dev-template
# Recipe:: localgit
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "git"
include_recipe "elife-chef-dev-template::default"

# where to put our repositories
localgit = "/home/localgit"

directory localgit do
  owner "root"
  group "root"
  mode 0755
  action :create
end

# install git repos to our local path
git_repos = Array.new
git_repos.push ["git://github.com/elifesciences/", "elife-chef-dev-template"]
git_repos.push ["git://github.com/elifesciences/", "elife-api-prototype"]
git_repos.push ["git://github.com/elifesciences/", "elife-bot"]
git_repos.push ["git://github.com/elifesciences/", "elife-articles"]

git_repos.each do |repos|
  base_uri = repos[0]
  repos_name = repos[1] 
  repos_uri = base_uri + repos_name + ".git"
  repos_dir = localgit + "/" + repos_name
  git repos_dir do
    repository repos_uri
    reference "master"
    action :sync
  end
end