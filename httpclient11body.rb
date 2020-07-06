#GET命令を使ってボディ情報だけを
require "socket"

port=80
host = ARGV[0]
path = ARGV[1]

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"
    sock.puts ""

    while line=sock.gets
        line.chomp!
        break if line == ""
    end
    
    while line=sock.gets
        line.chomp!
        puts line
    end
end
