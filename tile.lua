Tile = {}

function Tile.new(self, imagePath, strength, desiredHeight, desiredWidth)
  local tile = {}
  tile.image = love.graphics.newImage(imagePath)
  tile.strength = strength
  
  local originalWidth, originalHeight = tile.image:getWidth(), tile.image:getHeight()

  tile.scaleX = desiredWidth / originalWidth
  tile.scaleY = desiredHeight / originalHeight
  
  tile.height = desiredHeight
  tile.width = desiredWidth
  
  setmetatable(tile, self)
  self.__index = self
  
  return tile
end

function Tile.draw(self, x, y)
  love.graphics.draw(self.image, x, y, 0, self.scaleX, self.scaleY)
end