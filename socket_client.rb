require 'socket'
require 'sinatra'


get '/print' do 

	client = TCPSocket.open '192.168.1.181', 9100

	client.print "lalala"

	client.close
	
	"done"

end

