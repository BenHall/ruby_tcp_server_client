require 'socket'

host, port = 'localhost', 7000

TCPServer.open(host, port) do |server|
  puts "Server started"
  while session = server.accept
    puts "Accepted"
    while session.gets
      session.print 'RECIEVED AND DONE: ' + $_
    end
    session.close
  end
end