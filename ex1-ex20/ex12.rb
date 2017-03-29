# This program can't run.

require 'open-url'

open("http://www.ruby-lang.org/en") do |f|
	f.each_line {|line| p line}
	puts f.base_url
	puts f.content_type
	puts f.charset
	puts f.content_encoding
	puts f.last_modified
end
