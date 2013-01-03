# installation
default[:uwsgi][:version] = "1.9.10"
default[:uwsgi][:base_file_name] = "uwsgi-#{node[:uwsgi][:version]}"
default[:uwsgi][:file_name] = "#{node[:uwsgi][:base_file_name]}.tar.gz"
default[:uwsgi][:download_url] = "http://projects.unbit.it/downloads/#{node[:uwsgi][:file_name]}"
default[:uwsgi][:install_dir] = "/usr/sbin"
