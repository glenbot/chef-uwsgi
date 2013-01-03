#
# Cookbook Name:: uwsgi
# Recipe:: default
#
# Author: Glen Zangiroami <http://github.com/glenbot>
#
# MIT Licensed
include_recipe "build-essential"

package "libxml2-dev" do
    action :install
end

remote_file "/tmp/#{node[:uwsgi][:file_name]}" do
    not_if do
        File.exists?("#{node[:uwsgi][:install_dir]}/uwsgi")
    end
    source node[:uwsgi][:download_url]
    mode "0644"
end

script "install_uwsgi" do
    not_if do
        File.exists?("#{node[:uwsgi][:install_dir]}/uwsgi")
    end
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
    tar -xzvf #{node[:uwsgi][:file_name]}
    cd #{node[:uwsgi][:base_file_name]}
    make
    cp uwsgi #{node[:uwsgi][:install_dir]}
    EOH
end
