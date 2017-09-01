puts "Ваше ім'я?"
name = gets.chomp
puts "Ваш ріст?"
height = gets.chomp

weight = height.to_i - 110
puts "#{name}, ваша вага #{weight}"
if weight < 0
  puts "Ваш вес уже оптимальный"
end