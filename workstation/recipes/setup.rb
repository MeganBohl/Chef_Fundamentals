# ~/setup.rb

package 'tree' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  variables(
   :name => 'Megan')
  action:create
end

service 'ntpd' do
  action [:enable, :start]
end
