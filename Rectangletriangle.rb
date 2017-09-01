
trig = []
i = 0
puts "Введіть сторони трикутника"
while i <= 2
  a = gets.chomp
  trig[i] = a.to_i
  i+= 1
end
trig = trig.sort

result = ((trig[0] ** 2) + (trig[1] ** 2)) - trig[2] ** 2
if result == 0
  if trig[0] == trig[1] || trig[0] == trig[2] || trig[1] == trig[2]
    q = " і рівнобедренний "
  end
  puts "Трикутник є прямокутний#{q}"
else
  if trig[0] == trig[1] && trig[0] == trig[2]
    q = " і рівносторонній"
  end
  puts "Трикутник рівнобедренний#{q}"
end



