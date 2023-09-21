local table = {"this", 2, 9.9, true, {"ok", "cool"}}

-- print(table) --> prints adress

-- how to iterate in a list

for i = 1, #table do
  print(table[i])
end

print('-----------------------------------------------------------')

print(table[2]) --> 2

print(table[5][1]) --> "ok"

print(table[9]) --> nill

print('-----------------------------------------------------------')

-- example of uses

local a, b, c, d, e, f, g = 1, 2, 3, 4, 5, 6, 7 -- not very pratical

local alphaNumbers = {1, 2, 3, 4, 5, 6, 7}

print(c)

print(alphaNumbers[3]) -- same thing

print('-----------------------------------------------------------')

local example = {1, 3, 6, variable, 7, another_variable, 19} -- variable is nill in this case (another_variable too)

for i = 1, #example do
  print(example[i])
end

print('-----------------------------------------------------------')

local tbl = {1, 3, 5, 6, 7, 5, 8, 9}

for k, v  in pairs(tbl) do -- another way to iterate 
  print(k) -- > k is the index
  print(v) -- > v is the value
  -- print(k, v) -- > you can do like this
end

print('-----------------------------------------------------------')

local nums = {
  {1, 8, 3},
  {4, 1, 9},
  {4, 7, 6}
}

print(nums[1][1]) --> 1
print(nums[1][2]) --> 8
print(nums[2][2]) --> 1
print(nums[3][2]) --> 7

print()

print(#nums) --> amount of tables inside nums
print(#nums[1]) --> amount of items of the first table

print()

-- how to print a matrix

for i = 1, #nums do
  for j = 1, #nums[i] do
    print(nums[i][j])
  end
end

print('-----------------------------------------------------------')

local variables = {
  name = 'Gabriel',
  age = 19
}

print(variables[i]) --> nill
print(variables[name]) --> nill
print(variables["name"]) --> Gabriel
