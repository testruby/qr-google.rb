require 'rubygems'
require 'open-uri'

LINK = "http://chart.googleapis.com/chart"
def qr(text="Hello World", width=150, height=150)
	text = URI.encode(text)
	code = open("#{LINK}?chs=#{width}x#{height}&cht=qr&chl=#{text}").read
	return code
end
width = ARGV[1] ? ARGV[1] : "150"
height = ARGV[2] ? ARGV[2] : "150"
text = ARGV[0] ? ARGV[0] : "Hello from ruby"
puts qr(text, width, height)

