local function sayHello()
  print('hello')
end

sayHello()
-- you can use again
--[[ 
sayHello()
sayHello()
sayHello()
]]

local name = io.read()

local function sayHelloToPerson(name)
  print('Hello ' .. name .. '!')
end

sayHelloToPerson(name)

print('------------------------------------------------')

local function sayHelloToAnotherPerson(another_name)
  print('Hello ' .. another_name .. '!')
end

sayHelloToAnotherPerson('Melissa')

print('------------------------------------------------')

local num1 = 30
local num2 = 23

local function sum(num1, num2)
  return num1 + num2
end

print(sum(num1, num2))

local answer = sum(num1, num2)
print(answer)
