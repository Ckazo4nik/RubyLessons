Month = { "January" => 31, "February" => 28, "March" => 30, "April" => 31, "May" => 30, "june" => 31, "Jully" => 30, "August" => 31, "September" => 30, "October" => 31, "November" => 30, "December" => 31}
Month.each do |key,value|
  if value == 31
    puts key
  end
end

puts "Заполнить массив числами от 10 до 100 с шагом 5"
arr = []
i = 0
while i <= 100
  arr.push(i)
  i+=5
end
puts arr
puts "Заполнить массив числами фибоначи до 100"
arrf = [1, 1]
q = 0
cs = 1
while arrf.last < 100
 sum =  arrf[q] + arrf[cs]
  arrf.push(sum)
  q += 1
  cs += 1

end
puts arrf