#
# Cookbook:: Apache
# Recipe:: apache
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  action :create
  content '
  <html>
  <head> Hello World </head>
  </html>'
end
