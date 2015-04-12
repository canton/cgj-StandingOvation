#!/usr/bin/env ruby


case_count = gets.chomp.to_i
case_count.times { |cc|
  buffer = gets.chomp.split(' ')
  n = buffer[0].to_i
  s = buffer[1].split('').map(&:to_i).to_a
  sum = 0
  csum = s.map{|x|
    sum += x
    sum - x
  }
  ans = csum.each_with_index.map{|x,i| i-x}.max
  ans = 0 if ans < 0

  # puts s.join(',')
  # puts csum.join(',')

  puts "Case ##{cc+1}: #{ans}"
}
