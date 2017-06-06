require "open-url"
require "nkf"

url = "http://cruel.org/freeware/cathedral.html"
filename = "cathedral.html"

File.open(file, "w") do |f|
  text = open(url).read
  f.write text
  #f.write NKF.nkf("-s",text)
end

