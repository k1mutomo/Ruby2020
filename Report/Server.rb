require 'socket'

def server sock
    body = ""

    #Receive from Client
    while line = sock.gets
        line.chomp!
        break if line == ""

        #ConversionURL
        if %r{(.*)://([^/]*)/([^/]*)/([^/]*)/(..........)} =~ line
            proto = $1
            host = $2
            asin = $5
            if host == "www.amazon.co.jp"
                body += "#{proto}://#{host}/dp/#{asin}/"
            else
                body = "Error"
            end
        end
    end

    #Send to Client
    sock.puts body
    sock.close
end

TCPServer.open 80 do |s|
    while true
        Thread.new s.accept do |sock|
            server sock
        end
    end
end