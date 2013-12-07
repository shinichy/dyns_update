#!/usr/bin/ruby

# Please change these setting

username = 'username'
password = 'password'
hostname = 'hostname'
domain = 'dyns.cx'

# An ip address that you want to send to DyNS.
# This program tries to get your ip address by running ipconfig command.
# Typically, en1 is used when you use Wifi, en0 is used when you use ethernet, so please change this interface based on your environment.
interface = 'en1'
ip = `ipconfig getifaddr #{interface}`.strip

# settings end


require 'net/http'

devel = false

DOMAIN = 'www.dyns.net'
URL = '/postscript011.php'

url = "#{URL}?username=#{username}&password=#{password}&host=#{hostname}.#{domain}&ip=#{ip}"
url << "&devel=1" if devel
puts "http request: http://#{DOMAIN}#{url}"

res = Net::HTTP.get_response(DOMAIN, url)

puts res.body
