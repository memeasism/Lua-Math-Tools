local numbers = {}
local previous
local input = io.read()
os.execute("clear")
for number in string.gmatch(input, '([^,]+)') do
	table.insert(numbers, tonumber(number))	
end
table.sort(numbers, function(a,b)
	return (a<b)
end)

for i, v in pairs(numbers) do
if not previous then
previous = v
end
previous = previous+v
end

print(“The mean is: “ .. previous)
