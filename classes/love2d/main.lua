_G.love = require("love") -- importing a module called love

function love.load()
  love.graphics.setBackgroundColor(0.5, 0.5, 1)

  _G.pacman = {}
  pacman.x = 200
  pacman.y = 250

  -- coding doing the same thing
  --[[
  _G.pacman = {
    x = 200,
    y = 250
  }
  --]]

  pacman.eat = false

  _G.food_x = 600
  _G.food_y = 200
end

function love.update(dt)
  pacman.x = pacman.x + 1

  if pacman.x >= food_x + 20 then 
    pacman.eat = true
  end
end

function love.draw()
  if not pacman.eat then
  -- RGB
  love.graphics.setColor(1, 0, 0) -- this is going to be red
  -- 75, 148, 10  (a sort of a green)
  love.graphics.setColor(75 / 255, 148 / 255, 10 / 255) -- this is how to convert to usual RGB value

  -- love.graphics.rectangle("line", 50, 50, 50, 50) -- x, y, width, height
  love.graphics.rectangle("fill", food_x, food_y, 70, 70) -- x, y, width, height
  end

  love.graphics.setColor(1, 0.7, 0.1) -- this is going to be red
  -- love.graphics.circle("line", 200, 500, 50) -- x, y, radius

  love.graphics.arc("fill", pacman.x, pacman.y, 60, 1, 5) -- x, y, radius, start of one of the parts, start of the another part
end
