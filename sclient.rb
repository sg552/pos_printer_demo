puts "=== before require "

require 'socket'

sleep 0.1
puts "=== 111"
client = TCPSocket.new '192.168.1.181', 9100

sleep 0.1
puts "=== 222 "
# 加粗
client.write "\x1B\x21\x08  bold ..."
puts "=== 333"
# 倍高
client.write "\x1B\x21\x10  2x height..."
puts "=== 444"
# 倍宽
client.write "\x1B\x21\x20  2x width...\n"

puts "=== 555"
# 倍宽, 倍高
client.write "\x1B\x21\x30 2x width, height..."

puts "=== 666"
client.write "\n\n\n\n\n\n\n\n"

#client.write "\x1B\x40"
client.write "\x1D\x56\x01"

sleep 0.1

client.close

puts "=== done"
	

