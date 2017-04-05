require 'date'
require 'time'

class TimeArr
  @@quarter = 900
  @@half_hour = 1800
  @@hour = 3600

  def compose_time_list(date)
    arr = Array.new
    arr[0] = get_init_time(date)
    arr = form_arr(arr, arr[arr.size - 1], arr.size, 1, @@quarter)
    arr = form_arr(arr, arr[arr.size - 1], arr.size, 4, @@half_hour)
    arr = form_arr(arr, arr[arr.size - 1], arr.size, 7, @@hour)
    arr = form_arr(arr, arr[arr.size - 1], arr.size, 120, @@hour * 24)
    return arr
  end

  def get_init_time(date)
    if date.include? ":"
      return Time.parse(date)
    end
    return Time.parse(date) + @@hour * 24
  end

  def form_arr(init_arr, time_value, counter, hours_number, lapse)
    arr = init_arr
    time = time_value
    loop do
      time = time + lapse
      arr[counter] = time
      counter += 1
      break if time - time_value == @@hour * hours_number
    end
    return arr
  end

end

is_exit = "exit"
time_arr = TimeArr.new
loop do
  print "Input the date, please: "
  date = gets.chomp! # examples: "1 Jun" or "22 Dec 2016" or "2 May 17:31" or "26 Jun 2013 09:30:00"
  break if date == is_exit
  arr = date.split
  if arr[0].to_i > 0 and arr[0].to_i <= 31
    time_arr.compose_time_list(date).each{|elem|puts elem.rfc2822}
    puts
  else
    puts "Not a date (wrong date)! Try again with correct date, please."
    puts
  end
end
exit