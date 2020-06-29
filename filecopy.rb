inf = ARGV[0]
outf = ARGV[1]

fin = open inf, "r"
fout = open outf, "a"

while line = fin.gets
    fout.puts line
end

fout.close
fin.closeFile.open("sample1.txt", "w") do |f| 
  f.puts("Hello, World!")
end
