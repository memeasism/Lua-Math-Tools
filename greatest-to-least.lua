local numbers = {}
local input = io.read()
for number in string.gmatch(input, '([^,]+)') do
	table.insert(numbers, tonumber(number))	
end
table.sort(numbers, function(a,b)
	return (a>b)
end)
for key, value in pairs(numbers) do
	io.write(value..", ")
end
