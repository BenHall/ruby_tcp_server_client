require 'socket'

host, port = 'localhost', 7000

TCPSocket.open(host, port) do |socket|
  puts "opened socket"
  
  10.times do |i|
    socket.puts "COMMAND: EXECUTE #{i}"
    socket.flush
    answer = socket.gets
    puts answer
  end
  
  
  socket.close
end