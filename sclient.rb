puts "=== before require "

require 'socket'

sleep 0.1
client = TCPSocket.new '192.168.1.181', 9100
sleep 0.1




# 倍宽, 倍高
client.write "\x1B\x21\x30 2x width, height... 你好啊\n"

content = "你好，我是第三行"
puts "== encoding: #{content.encoding}"

content = content.encode 'gbk', 'utf-8'
puts "== after , encoding: #{content.encoding}"

client.write content

client.write "\n\n\n\n\n\n\n\n"

client.write "\x1D\x56\x01"
sleep 0.1

client.close

puts "=== done"
	

