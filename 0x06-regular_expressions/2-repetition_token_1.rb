#!/usr/bin/env ruby

# Check if the argument matches the specified pattern
puts ARGV[0].scan(/hbtn(t{1})/).join
