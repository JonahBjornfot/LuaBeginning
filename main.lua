local current_color = {1, 1, 1, 1}
local seconds = 30
local score = 0
local game = "Spamclickers"
local helpers = "M to Start    P to pause   Space to reset"
local buttons = "a - 1, w - 2, s - 3, d - 4"
local rightnumber = "I denhär verision måste du använda debug consolen"
local red = 100/255
local green = 100/255
local blue = 100/255
Color = { red, green, blue}

love.draw = function()
  local square = {100, 100, 100, 500, 700, 500, 700, 100}

  local clock_display = 'Seconds: ' .. math.floor(seconds)
  love.graphics.print(clock_display, 0, 0, 0, 3, 3)
  love.graphics.print(score, 700, 0, 0, 3, 3)
  love.graphics.print(game, 300, 0, 0, 3, 3)
  love.graphics.print(helpers, 175, 50, 0, 2, 2)
  love.graphics.print(buttons, 600, 85, 0, 1, 1)
  love.graphics.print(rightnumber, 20, 85, 0, 1, 1)

  love.graphics.setColor(current_color)
  love.graphics.polygon('fill', square)

  love.graphics.setBackgroundColor(Color)
end

love.keypressed = function(pressed_key)
  if pressed_key == 'a' then
    if RandomNumber == 1 then
      score = score + 1
      current_color = {0, 1, 1, 1}
      RandomNumber = love.math.random(1, 4)
      print(RandomNumber)
    else score = score - 1
    end
  elseif pressed_key == 'w' then
    if RandomNumber == 2 then
      score = score + 1
      current_color = {1, 0, 0, 1}
      RandomNumber = love.math.random(1, 4)
      print(RandomNumber)
    else score = score - 1
    end
  elseif pressed_key == 's' then
    if RandomNumber == 3 then
      score = score + 1
      current_color = {1, 1, 1, 1}
      RandomNumber = love.math.random(1, 4)
      print(RandomNumber)
    else score = score - 1
    end
  elseif pressed_key == 'd' then
    if RandomNumber == 4 then
      score = score + 1
      current_color = {1, 0, 1, 1}
      RandomNumber = love.math.random(1, 4)
      print(RandomNumber)
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
  elseif pressed_key == "p" then
    game = "Pausad"
    score = score - 5
    RandomNumber = 0
    love.update = function()
      seconds = seconds
    end
  elseif pressed_key == "m" then
      RandomNumber = love.math.random(1, 4)
      print(RandomNumber)
      game = "Running"
     if RandomNumber == 1 then
        current_color = {0, 1, 1, 1}
      elseif RandomNumber == 2 then
        current_color = {1, 0, 0, 1}
      elseif RandomNumber == 3 then
        current_color = {1, 1, 1, 1}
      elseif RandomNumber == 4 then
        current_color = {1, 0, 1, 1}
      end
      love.update = function (dt)
        seconds = seconds - dt
        if seconds < 0 then
          seconds = seconds + dt
          RandomNumber = 0
          game = "Ended"
      end
    end
  end
end

love.update = function(dt)
    if seconds < 0 then
      seconds = seconds + dt
      RandomNumber = 0
      game = "Ended"
      love.event.quit()
    end
  end

love.load = function ()
    print("Spelet har startat")
end
