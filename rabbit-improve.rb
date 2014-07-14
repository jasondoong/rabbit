def rabbit_count(current_month)
  if current_month>0
    y0,y1,y2,y3 = rabbit_count(current_month-1)
	y0,y1,y2,y3 = y2+y3,y0,y1,y2+y3
	total = (y0+y1+y2+y3)*2
	puts current_month.to_s+"->"+total.to_s
	return y0,y1,y2,y3
  else
    return [1, 0, 0, 0]
  end
end

month=33
y0,y1,y2,y3 = rabbit_count(month)
total = (y0+y1+y2+y3)*2
puts "Total rabbits is "+total.to_s
puts "the end"
gets
