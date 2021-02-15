local current_color = {1, 1, 1, 1}
local seconds = 30
local score = 0
local game = "Running"

love.draw = function()
  local square = {100, 100, 100, 500, 700, 500, 700, 100}

  local clock_display = 'Seconds: ' .. math.floor(seconds)
  love.graphics.print(clock_display, 0, 0, 0, 3, 3)
  love.graphics.print(score, 700, 0, 0, 3, 3)
  love.graphics.print(game, 325, 0, 0, 3, 3)

  love.graphics.setColor(current_color)
  love.graphics.polygon('fill', square)
end

love.keypressed = function(pressed_key)
  if pressed_key == 'a' then
    current_color = {0, 1, 1, 1}
    score = score + 1
  elseif pressed_key == 'w' then
    current_color = {1, 0, 0, 1}
    score = score + 1
  elseif pressed_key == 's' then
    current_color = {1, 1, 1, 1}
    score = score + 1
  elseif pressed_key == 'd' then
    current_color = {1, 0, 1, 1}
    score = score + 1
  elseif pressed_key == 'escape' then
    love.event.quit()
  elseif pressed_key == 'space' then
    score = 0
    seconds = 30
  elseif pressed_key == "p" then
    game = "Pausad"
    score = score - 10
    love.update = function()
      seconds = seconds
    end
  elseif pressed_key == "o" then
    game = "Running"
    score = score
    love.update = function(dt)
      seconds = seconds - dt
    end
  end
end

love.update = function(dt)
    seconds = seconds - dt
  end

love.load = function ()
    print("Spelet har startat")
end

