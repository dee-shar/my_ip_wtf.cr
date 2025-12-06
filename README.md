# my_ip_wtf.cr
Web-API for [myip.wtf](https://myip.wtf) which gives you information about your IP address

## Example
```cr
require "./my_ip_wtf"

my_ip_wtf = MyIpWtf.new
my_ip_info = my_ip_wtf.get_my_ip()
puts my_ip_info
```
