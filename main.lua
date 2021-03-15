
-- Globala Variabler

local current_color = {1, 1, 1, 1}
local seconds = 30
local score = 0
local game = "SpamKlickers"
local helpers = "S to Start    P to pause   Space to reset    ESC to quit"
local gamenumber = 0
local red = 175/255
local green = 165/255
local blue = 100/255
Color = {red, green, blue}

-- Ritar / Pritar - ut på skärmen

love.draw = function()
  local square = {100, 100, 100, 500, 700, 500, 700, 100}

  local clock_display = 'Seconds: ' .. math.floor(seconds)
  love.graphics.print(clock_display, 0, 0, 0, 3, 3)
  love.graphics.print(score, 700, 0, 0, 3, 3)
  love.graphics.print(game, 300, 0, 0, 3, 3)
  love.graphics.print(helpers, 100, 50, 0, 2, 2)
  love.graphics.print(gamenumber, 10, 50, 0, 2, 2)

  love.graphics.setColor(current_color)
  love.graphics.polygon('fill', square)

  love.graphics.setBackgroundColor(Color)
end


-- If text samt koden för funktionerna

love.keypressed = function(pressed_key)
  if pressed_key == '1' then
    if RandomNumber == 1 then
      score = score + 1
      current_color = {0, 1, 1, 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == '2' then
    if RandomNumber == 2 then
      score = score + 1
      current_color = {1, 0, 0, 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == '3' then
    if RandomNumber == 3 then
      score = score + 1
      current_color = {1, 1, 0, 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == '4' then
    if RandomNumber == 4 then
      score = score + 1
      current_color = {1, 0, 1, 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == 'escape' then
    love.event.quit()
  elseif pressed_key == 'space' then
    score = 0
    seconds = 30
    RandomNumber = love.math.random(1, 4)
    print(RandomNumber)
    game = "Restarted"
  -- elseif pressed_key == "p" then
  --   game = "Pausad"
  --   -- score = score - 5
  --   RandomNumber = 0
  --   love.update = function(dt)
  --     seconds = seconds +  dt
  --   end
  elseif pressed_key == "s" then
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
      game = "Running"
      end
      love.update = function (dt)
        seconds = seconds - dt
        if seconds < 0 then
          seconds = seconds + dt
          RandomNumber = 0
          game = "Ended"
      end
    if pressed_key == "p" then
      game = "Pausad"
      score = score - 5
      RandomNumber = 0
      love.update = function()
        seconds = seconds
      end
    end
  end
end

  -- Debug consolen

love.load = function ()
    print("The game has started!")
end
