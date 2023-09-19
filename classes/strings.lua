local x = 'str' -- == local x = "str"

local y = [[ 
omg
  this
    is 
  useful
]]

print(x)
print(y)

local name = "Gabriel"
print(#name) -- lenght of the string 
-- could be:
-- local name = #"Gabriel"

local first_name = "Gabriel"
local last_name = "Silva Aires"

local full_name = first_name .. " " .. last_name
print(full_name)

print('--------------------------')

local num = 20 

local str = tostring(num) -- converting to string

print('this is number: ' .. type(num) .. '\nthis is a string: ' .. type(str))

print('this is a vertical tab\vomg')

print("Hello\nWorld\tI am\valmost 19\\20 \"years\"")

print('------------------------------')

local name = 'Gabriel Silva Aires'
print(name)
print(string.lower(name))
print(string.upper(name))

print(string.len(name)) -- from another lib
