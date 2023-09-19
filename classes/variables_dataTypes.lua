-- in lua, we have:

--[[ 
    nil - null or false
    number - 1 2 -99 1.98
    string - 'lksjfk' "bruhh"
    boolean - true false
    tables - {}  {'cat', 'dog', 'mouse'}
]]

local name -- this is how you create a variable

local another_example

local x -- default == nil
print(x)

x = 3
print(x + 8)


local example -- this is local (not allowed to be used outside of this file)

GlobalVar = 10 -- this is global (is allowed to be used outside of this file)

_G.GlobalVar = 10 -- just a good practice to declare a global variable

local string = [[
Another way to print Strings.
  And
  It's very literal
]]

print(string)


local one, two, three = 'one', 2, false -- this is weird

print(one)
print(two)
print(three)


print('---------------------------')

local name = 'Gabriel'
print("Hello my name is " .. name)
