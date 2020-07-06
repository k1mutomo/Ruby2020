#GET命令を使ってヘッダ情報だけを
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
        line = line.chomp
        #line.chomp!
        if line == ""
            break
        end
        puts line
    end
end
