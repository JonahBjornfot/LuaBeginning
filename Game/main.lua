
-- Global Variabels

local current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
local txtfont = love.graphics.newFont('tfont.ttf', 35)
local gamename = "SpamKlickers"
local seconds = 30
local score = 0
local gamenumber = 0
local highscore = 0
local red = 100/255
local green = 100/255
local blue = 100/255
Color = {red, green, blue}
local square = {100, 100, 100, 300, 1275, 300, 1275, 100}
local mybackground = nil

-- Sounds!

local Sound1 = love.audio.newSource("johnsen.wav", "static")
local Sound2 = love.audio.newSource("sky.wav", "static")
local Sound3 = love.audio.newSource("wrong.wav", "static")
local Sound4 = love.audio.newSource("whymad.wav", "static")
local Sound5 = love.audio.newSource("letsgo.wav", "static")
local Sound6 = love.audio.newSource("winxp.wav", "static")

-- Draws on screen

love.draw = function()
  love.graphics.setFont(txtfont)
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(mybackground)
  local clock_display = 'Secounds: ' .. math.floor(seconds) 
  love.graphics.print(clock_display, 525, 460, 0, 1, 1)
  love.graphics.print('Score: ' .. score, 1100, 675, 0, 1, 1)
  love.graphics.print(gamename, 525, 35, 0, 1, 1)
  love.graphics.print('S to Start    P to pause   Space to reset    ESC to quit', 150, 350, 0, 1, 1)
  love.graphics.print('Press: ' .. gamenumber, 600, 550, 0, 1, 1)
  love.graphics.print('Highscore:' .. highscore, 50, 675, 0, 1, 1)
  love.graphics.setColor(current_color)
  love.graphics.polygon('fill', square)
  love.graphics.setBackgroundColor(Color)
end

-- Functions, the code that makes the game work.

love.keypressed = function(pressed_key)
  if pressed_key == '1' then
    if RandomNumber == 1 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else 
      score = score - 1
      Sound3:play()
    end
  elseif pressed_key == '2' then
    if RandomNumber == 2 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else 
      score = score - 1
      Sound3:play()
    end
  elseif pressed_key == '3' then
    if RandomNumber == 3 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else 
      score = score - 1
      Sound3:play()
    end
  elseif pressed_key == '4' then
    if RandomNumber == 4 then
      score = score + 1
      current_color = {love.math.random(0, 1), love.math.random(0, 1), love.math.random(0, 1), 1}
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
    else 
      score = score - 1
      Sound3:play()
    end
  elseif pressed_key == 'escape' then
    love.event.quit()
  elseif pressed_key == 'space' then
    score = 0
    seconds = 30
    RandomNumber = love.math.random(1, 4)
    gamenumber = RandomNumber
    gamename = "Restarted"
    Sound5:play()
    Sound2:play()
    Sound1:stop()
    Sound4:stop()
  elseif pressed_key == "s" then
      RandomNumber = love.math.random(1, 4)
      gamenumber = RandomNumber
      gamename = "Running"
      Sound5:play()
      Sound2:play()
      end
      love.update = function (dt)
        seconds = seconds - dt
        if seconds < 0 then
          seconds = seconds + dt
          RandomNumber = 0
          gamenumber = RandomNumber
          gamename = "Ended"
          Sound2:stop()
          if score > highscore then
             highscore = score
            Sound1:play()
          elseif score < highscore then
            Sound4:play()
          end
      end
    if pressed_key == "p" then
      score = score - 5
      gamenumber = 0
      gamename = "Paused, S to Resume"
      Sound2:stop()
      Sound6:play()
      love.update = function()
        seconds = seconds
      end
    end
  end
end

  -- Debug console

love.load = function ()
    print("The game has started!")
    mybackground = love.graphics.newImage('pictu.jpg')
end
