_G.love = require("love") -- importing a module called love

function love.load()
  mel = {
    x = 0,
    y = 0,
    sprite = love.graphics.newImage("sprites/spritesheet.png"),
    animation = {
      direction = "right",
      idle = true,
      frame = 1,
      max_frames = 8,
      speed = 30,
      timer = 0.1
    }
  }

  SPRITE_WIDTH = 5352
  SPRITE_HEIGHT = 569

  QUAD_WIDTH = 669
  QUAD_HEIGHT = SPRITE_HEIGHT


  quads = {}
  for i = 1, mel.animation.max_frames do
    quads[i]= love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)
  end
end

function love.update(dt)
  if love.keyboard.isDown("d") then
    mel.animation.idle = false
    mel.animation.direction = "right"
  elseif love.keyboard.isDown("a") then
    mel.animation.idle = false
    mel.animation.direction = "left"
  else mel.animation.idle = true mel.animation.frame = 1
  end

  if not mel.animation.idle then
    mel.animation.timer = mel.animation.timer + dt

    if mel.animation.timer > 0.2 then
      mel.animation.timer = 0.1

      mel.animation.frame = mel.animation.frame + 1

    if mel.animation.direction == "right" then
      mel.x = mel.x + mel.animation.speed;
    elseif mel.animation.direction == "left" then
      mel.x = mel.x - mel.animation.speed
    end

      if mel.animation.frame > mel.animation.max_frames then
        mel.animation.frame = 1
      end
    end
  end
end

function love.draw()
  love.graphics.scale(0.3)

  if mel.animation.direction == "right" then
    love.graphics.draw(mel.sprite, quads[mel.animation.frame], mel.x, mel.y)
  else
    love.graphics.draw(mel.sprite, quads[mel.animation.frame], mel.x, mel.y, 0, -1, 1, QUAD_WIDTH, 0)
  end
end
