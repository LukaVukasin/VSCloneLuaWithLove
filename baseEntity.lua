BaseEntity = {}

function BaseEntity.new(self, x, y, imagePath, strength, desiredWidth, desiredHeight)
  local baseEntity = {}
  baseEntity.x = x
  baseEntity.y = y
  baseEntity.image = love.graphics.newImage(imagePath)
  baseEntity.strength = strength
  
  local originalWidth, originalHeight = baseEntity.image:getWidth(), baseEntity.image:getHeight()

  baseEntity.scaleX = desiredWidth / originalWidth
  baseEntity.scaleY = desiredHeight / originalHeight
  baseEntity.width = desiredWidth
  baseEntity.height = desiredHeight
  baseEntity.originX = originalWidth/2
  baseEntity.originY = originalHeight/2
  
  setmetatable(baseEntity, self)
  self.__index = self
  
  return baseEntity
end