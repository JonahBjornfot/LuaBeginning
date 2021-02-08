local current_color = {1, 1, 1, 1}
local seconds = 0
local score = 0

love.draw = function()
  local square = {100, 100, 100, 200, 200, 200, 200, 100}

  local clock_display = 'Seconds: ' .. math.floor(seconds)
  love.graphics.print(clock_display, 0, 0, 0, 2, 2)
  love.graphics.print(score, 500, 0, 0, 5, 5)

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
  end
  if pressed_key == 'escape' then
    love.event.quit()
  end
  if pressed_key == 'e' then
    seconds = 0
    score = 0
  end
end

love.update = function(dt)
    seconds = seconds + dt
    print(dt)
  end
love.load = function ()
    print("Spelet har startat")
end

-- -- 1. Spelet startar, ladda in saker, nolställ, delklarera var osv.
-- -- 2. Spellogik
-- -- 3. Rita på skärmen.

-- local world = love.physics.newWorld(0, 10 * 128, 0, 100 * 100)

-- -- Triangle is the name of our first entity
-- local triangle = {}
-- triangle.body = love.physics.newBody(world, 200, 200, 'dynamic')
-- -- Give the triangle some weight
-- triangle.body.setMass(triangle.body, 32)
-- triangle.shape = love.physics.newPolygonShape(100, 100, 200, 100, 200, 200)
-- triangle.fixture = love.physics.newFixture(triangle.body, triangle.shape)
-- triangle.fixture:setRestitution(0.5)

-- -- Another entity
-- local bar = {}
-- bar.body = love.physics.newBody(world, 200, 450, 'static')
-- bar.shape = love.physics.newPolygonShape(0, 0, 0, 20, 400, 20, 400, 0)
-- bar.fixture = love.physics.newFixture(bar.body, bar.shape)

-- -- Boolean to keep track of whether our game is paused or not
-- local paused = false

-- local key_map = {
--   escape = function()
--     love.event.quit()
--   end,
--   space = function()
--     paused = not paused
--     love.print("Pausat")
--   end
-- }

-- love.draw = function()
--   love.graphics.polygon('line', triangle.body:getWorldPoints(triangle.shape:getPoints()))
--   love.graphics.polygon('line', bar.body:getWorldPoints(bar.shape:getPoints()))
-- end

-- -- function love.load()
-- --     text = "FOCUSED"
-- --   end

-- --   function love.draw()
-- --     print(text)
-- --   end

-- -- function love.focus(f)
-- --     if f then
-- --       print("Window is focused.")
-- --       text = "FOCUSED"
-- --     else
-- --       print("Window is not focused.")
-- --       text = "UNFOCUSED"
-- --     end
-- --   end

-- love.keypressed = function(pressed_key)
--   -- Check in the key map if there is a function
--   -- that matches this pressed key's name
--   if key_map[pressed_key] then
--     key_map[pressed_key]()
--   end
-- end

-- love.update = function(dt)
--   if not paused then
--     world:update(dt)
--   end
-- end
