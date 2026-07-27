local numbers = {}
local previous = 0
local input = io.read()
os.execute("clear")
for number in string.gmatch(input, '([^,]+)') do
	table.insert(numbers, tonumber(number))	
end
table.sort(numbers, function(a,b)
	return (a<b)
end)

for i, v in pairs(numbers) do
previous = previous+v
end
previous = previous/#numbers

print([[The mean is:]] .. previous)