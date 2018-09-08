# ~/cookbooks/apache/recipes/server.rb

package 'httpd' do
  action :install
end

remote_file '/var/www/html/megan.jpg'do
 source 'https://www.devopsdays.org/events/2017-dallas/organizers/megan@2x.jpg'
end

template '/var/www/html/index.html' do
end

service 'httpd' do
  action [:enable,:start ]
end
