InputHandler = {}

function InputHandler.handlePlayerInput(dt, player)
  player.lastX = player.x
  player.lastY = player.y
  if love.keyboard.isDown("a") then
    player.x = player.x - player.speed * dt
  elseif love.keyboard.isDown("d") then
    player.x = player.x + player.speed * dt
  end
  if love.keyboard.isDown("w") then
    player.y = player.y - player.speed * dt
  elseif love.keyboard.isDown("s") then
    player.y = player.y + player.speed * dt
  end
end