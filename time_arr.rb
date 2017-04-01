require 'date'
require 'time'

class TimeArr

  @@quarter = 900
  @@half_hour = 1800
  @@hour = 3600
  @@day = 86400

  def compose_time_list(date)

    if date.include? ":"
      date_time = Time.parse(date)
    else
      date_time = Time.parse(date) + @@day
    end

    i = 0
    arr = Array.new
    arr[i] = date_time
    i = i + 1

    time = date_time
    loop do
      time = time + @@quarter
      arr[i] = time
      i = i + 1
      break if time - date_time == @@hour
    end

    half_hours = time
    loop do
      time = time + @@half_hour
      arr[i] = time
      i = i + 1
      break if time - half_hours == @@hour * 4
    end

    hours = time
    loop do
      time = time + @@hour
      arr[i] = time
      i = i + 1
      break if time - hours == @@hour * 7
    end

    days = time
    loop do
      time = time + @@day
      arr[i] = time
      i = i + 1
      break if time - days == @@day * 5
    end
    return arr
  end

end

is_exit = "exit"
time_arr = TimeArr.new
loop do
  print "Input the date, please: "
  date = gets.chomp! # examples: "22 Dec 2016" or "24 Jun 2013 09:30:00"
  break if date == is_exit
  arr = date.split
  if arr[0].to_i > 0 and arr[0].to_i <= 31
    if arr[0].to_i < 10
      arr[0] = "0" + arr[0].to_i.to_s
      i = 0
      date = ""
      loop do
        break if i >= arr.size
        date = date.concat(arr[i] + " ")
        i = i + 1
      end
    end
    time_arr.compose_time_list(date).each{|elem|puts elem.rfc2822}
    puts
  else
    puts "Not a date (wrong date)! Try again with correct date, please."
    puts
  end
end
exit