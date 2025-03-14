if arg[#arg] == "-debug" then require("mobdebug").start() end
io.stdout:setvbuf("no")

function love.load()
  require "baseEntity"
  require "player"
  require "tile"
  require "level1"
  require "inputHandler"
  require "wall"
  
  love.window.setMode(1280, 720, {fullscreen = false, resizable = true})
  player1 = Player.new(Player, 150, 150 , "player.png", 5, 25, 25, 200)
  level = Level1.get(Level1)
end

function love.update(dt)
  if level.checkTileColision(level, player1) == true then
    player1.x = player1.lastX
    player1.y = player1.lastY
  else
    InputHandler.handlePlayerInput(dt, player1)
  end
  print(player1.x)
  print(player1.originX)
  print(player1.y)
  print(player1.originY)
end

function love.draw()
  love.graphics.translate(-player1.x + 640, -player1.y + 360)
  local mouse_x, mouse_y = love.mouse.getPosition()
  local adjusted_mouse_x = mouse_x + player1.x - 640
  local adjusted_mouse_y = mouse_y + player1.y - 360
  angle = math.atan2(adjusted_mouse_y - player1.y, adjusted_mouse_x - player1.x)
  level.draw(level)
  player1.draw(player1, angle)
  love.graphics.line(player1.x, player1.y, adjusted_mouse_x, adjusted_mouse_y)
end