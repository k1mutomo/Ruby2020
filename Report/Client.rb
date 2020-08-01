require "socket"

#ServerInfo
port=80
proto="http"
host="localhost"
path="/"

#Input AmazonURL
amazonurl = ARGV[0]
#Ex:https://www.amazon.co.jp/abrAsus-%E3%82%A2%E3%83%96%E3%83%A9%E3%82%B5%E3%82%B9-%E5%B0%8F%E3%81%95%E3%81%84%E8%B2%A1%E5%B8%83-%E3%82%A2%E3%83%89%E3%83%90%E3%83%B3%E3%83%AC%E3%82%B6%E3%83%BC-%E3%82%A8%E3%83%87%E3%82%A3%E3%82%B7%E3%83%A7%E3%83%B3/dp/B07WY54CQ4?pf_rd_r=12J346J25ZABSMC2B3PH&pf_rd_p=4e9e15d0-840e-4573-b198-8a0cdc1b65de&pd_rd_r=96556a46-13cd-4fce-9be4-f3394db203f0&pd_rd_w=JOeU1&pd_rd_wg=sQmpt&ref_=pd_gw_ci_mcx_mr_hp_d


TCPSocket.open host, port do |sock|

    #Send to Server
    sock.puts "GET #{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts amazonurl
    sock.puts "Connection: close"
    sock.puts ""


    #Receive from Server
    while line=sock.gets
        puts line
    end
end