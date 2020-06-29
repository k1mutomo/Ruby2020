fname = gets.chomp

num = 1
open fname, 'r' do |f|
    while line = f.gets
        puts "#{num}:#{line}"
        num += 1
    end
end