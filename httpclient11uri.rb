require "socket"
port=80

proto,dummy,host,*arg = ARGV[0].split "/"
path = arg.join "/"
p proto
p dummy
p host
p path


TCPSocket.open host, port do |sock|
    sock.puts "GET /#{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"
    sock.puts ""

    while line=sock.gets
        puts line
    end
end
