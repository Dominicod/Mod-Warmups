require 'pry'

names = []
f = File.open("p022_names.txt", "r")
f.each_line {|line| names << line.split(/\W+/).sort}

name_scores = []
names.flatten.each_with_index { |name, index| name_scores << (name.downcase.bytes.map { |o| o - 96 }.sum * index) }

puts name_scores
