local numbers = {}
local input = io.read()
local middle
for number in string.gmatch(input, '([^,]+)') do
	table.insert(numbers, tonumber(number))	
end
table.sort(numbers, function(a,b)
	return (a>b)
end)
middle = #numbers/2
if middle % 1 == 0 then
    print("The median is:" .. (numbers[middle]+numbers[middle+1])/2)
elseif middle % 1 == 0.5 then
    print("The median is:".. numbers[middle+0.5])
end