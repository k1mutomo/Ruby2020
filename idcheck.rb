# 引数(ARGV[0])が20GJK59だったら、toshiと表示

id = ARGV[0]

if(id == "20GJK59")
    puts "toshi"
end

#　引数が??GJK??だったらGJKと表示
#ch = id.split ""
#if ch[2] == 'G' && ch[3] == 'J' && ch[4] == 'K'
#    puts 'GJK'
#end


# 正規表現
if /^(\d\d)GJK(..)$/ =~ id
    year = $1
    num = $2
    puts 'GJK'
end