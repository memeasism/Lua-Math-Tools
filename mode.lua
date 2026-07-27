local numbers = {}
local output = {}
local frequency = 0
local final
local input = io.read()
local middle
for number in string.gmatch(input, '([^,]+)') do
	table.insert(numbers, tonumber(number))	
end
for k, v in ipairs(numbers) do
    output[v] = (output[v] or 0) + 1
end
for k, v in pairs(output) do
    if v > frequency then
            frequency = v
            final = k
    end
end
print("The mode is: " .. final)