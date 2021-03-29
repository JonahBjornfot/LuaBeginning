
-- Global Variebels

local current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
local seconds = 30
local score = 0
local game = "SpamKlickers"
local helpers = "S to Start    P to pause   Space to reset    ESC to quit"
local pressbutton = "Press:"
local scoretext = "Score:"
local highscoretext = "Highscore:"
local gamenumber = 0
local highscore = 0
local red = 100/255
local green = 100/255
local blue = 100/255
local square = {100, 100, 100, 300, 700, 300, 700, 100}
Color = {red, green, blue}

-- Draws on screen

love.draw = function()
  local clock_display = 'Seconds: ' .. math.floor(seconds) 
  love.graphics.print(clock_display, 0, 0, 0, 3, 3)
  love.graphics.print(score, 700, 500, 0, 3, 3)
  love.graphics.print(scoretext, 570, 500, 0, 3, 3)
  love.graphics.print(game, 300, 0, 0, 3, 3)
  love.graphics.print(helpers, 100, 50, 0, 2, 2)
  love.graphics.print(gamenumber, 400, 400, 0, 4, 4)
  love.graphics.print(pressbutton, 250, 400, 0, 4, 4)
  love.graphics.print(highscore, 150, 500, 0, 2, 2)
  love.graphics.print(highscoretext, 10, 500, 0, 2, 2)
  love.graphics.setColor(current_color)
  love.graphics.polygon('fill', square)
  love.graphics.setBackgroundColor(Color)
end


-- If functions, the code that makes the game work.

love.keypressed = function(pressed_key)
  if pressed_key == '1' then
    if RandomNumber == 1 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == '2' then
    if RandomNumber == 2 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == '3' then
    if RandomNumber == 3 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else score = score - 1
    end
  elseif pressed_key == '4' then
    if RandomNumber == 4 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
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
    gamenumber = RandomNumber
    game = "Restarted"
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
          gamenumber = RandomNumber
          game = "Ended"
          if score > highscore then
             highscore = score
          end
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

  -- Debug console

love.load = function ()
    print("The game has started!")
end
