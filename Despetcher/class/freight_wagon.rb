require_relative 'company'
class FreightWagon
  include Company
  def add_wagon(name)
    wagon_type = name.wagon_type
    speed = name.speed
    if speed == 0
      if wagon_type == FreightWagon
        name.wagon += 1
        puts "Вагон було добавлено, кількість вагонів = #{name.wagon}"

      else
        puts 'Даний тип вагонів не підходить для поїзда'
      end
    else
      puts 'Зупиніть потяг'
    end
  end

  def delete_wagon(name)
    wagon_type = name.wagon_type
    if wagon_type == FreightWagon
      name.wagon -= 1
      puts 'Вагон забрано'
    else
      puts 'Даний тип вагонів не підходить для поїзда'
    end
  end
end
