ia = [10,20,30,40,"January","February","March"]

i = 0
while i < ia.length
    print ia[i].to_s + ","
    i += 1
end
puts

sa = ["January","February","March"]
i = 0
while i < sa.length
    print sa[i] + ","
    i += 1
end
puts

#2次元配列
da = [[1,2,3],[4,5,6],[7,8,9]]
p da
p da[1]
p da[2][0]