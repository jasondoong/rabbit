def rabbit_list(current_month)
  if(current_month>0)
    pre_list = rabbit_list(current_month-1)
	output_list = Array.new(pre_list)
    pre_list.each do |element|
      if(current_month - element >= 3)
	    output_list.push(current_month)
	  end
    end
  else
    output_list = Array.new
	output_list.push(0)
  end
  print current_month
  print "-> [ "
  output_list.each do |element|
    print element
	print ","
  end
  puts "]"
  return output_list
end

out = rabbit_list(18)
total = out.length * 2
puts "Total rabbits is "+total.to_s
puts "the end"
gets