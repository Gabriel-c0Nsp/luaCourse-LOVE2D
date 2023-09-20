if true then
  print('this was true')
end


if false then
  print("I't won't print")
end

local x = 2

if x > 5 then
  print('this won\'t run')
end


if x < 5 then
  print('It\'s true')
end

--[[
  and
  or
  not
  > 
  <
  >=
  <=
  ~=    -    something like !=
  ==
]]


print('-------------------------------------------------------------')


local y = 2

if y < 5 and y >= 2 then
  print('y is between 4 and 2 (both included)')
end

print('-------------------------------------------------------------')

if true and false then
  print('this will not execute')
end

if true and true then
  print('this will execute')
end

if true or true then
  print('this will execute')
end

if true or false then
  print('this will execute')
end

if false or false then
  print('this will not execute')
end

if not false then
  print('this will execute')
end

if not (false or false) then
  print('this will execute')
end

if not true or false then
  print('this will not execute')
end

if not (true or true) then
  print('this will not execute')
end

if not (false or true) then
  print('this will not execute')
end

print('-------------------------------------------------------------')

local age = 18

if age >= 18 then
  print('you may enter')
end

age = 14

if age < 18 then
  print('you can\'t enter')
end

print('-------------------------------------------------------------')

age = 17

if age >= 18 then
  print('You may enter')
else
  print('You are not welcome, BEGONE!')
end

print('-------------------------------------------------------------')

age = 10

if age >= 18 then
  print('You may enter')
elseif age < 13 then
  print('The water slides are down the road')
else
  print('You are not welcome, BEGONE!')
end

print('-------------------------------------------------------------')

age = 19
local birthday = true

if age >= 18 then
  print('You may enter')

  if birthday then
    print('You get a free drink on us')
  end

elseif age < 13 then
  print('The water slides are down the road')
else
  print('You are not welcome, BEGONE!')
end

print('-------------------------------------------------------------')

age = 19
local name = age > 18 and 'Mike' or 'Jeff' -- his name is Mike
print(name)

local name = age < 18 and 'Mike' or 'Jeff' -- his name is Jeff
print(name)

print('-------------------------------------------------------------')

if true then
  name = 'Gabriel'
else
  name = 'Mike'
end

print(name)
