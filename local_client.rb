
require 'socket'

client = TCPSocket.open 'localhost',  2000

puts client.gets

client.close

	

