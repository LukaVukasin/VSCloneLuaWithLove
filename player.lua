Player = {}

function Player.new(self, x, y, imagePath, strength, desiredWidth, desiredHeight, speed)
  local player = BaseEntity.new(BaseEntity, x, y, imagePath, strength, desiredWidth, desiredHeight)
  player.speed = speed
  player.lastX = x
  player.lastY = y
  
  setmetatable(player, self)
  self.__index = self
  
  return player
end

function Player.draw(self, angle)
  love.graphics.draw(self.image, self.x, self.y, angle, self.scaleX, self.scaleY, self.originX, self.originY)
end