DDD = Object:extend()

function DDD:new()
    self.player = love.graphics.newImage('assets/tile_player.png')
    self.tile_w, self.tile_h = self.player:getPixelDimensions()
    
    win_width, win_height, flags = love.window.getMode()
    
    self.center_width = win_width / 2
    self.center_height = win_height / 2

    self.tiles = {}

end

function DDD:update(dt)
end

function DDD:getStage(stage)

end

function DDD:draw()
    self:updatePlayer()
    self:updateTop()
    self:updateBottom()
    self:updateRight()
    self:updateLeft()
end

function DDD:updatePlayer()
    -- player tile, centered
    love.graphics.draw(
        self.player,
        self.center_width - self.tile_w/2,
        self.center_height - self.tile_h/2
    )
end

function DDD:updateTop()
    tile_top = love.graphics.newImage('assets/tile_end.png')
    -- top tile, same w player, h = center - tile_h
    love.graphics.draw(
        tile_top,
        self.center_width - self.tile_w/2,
        self.center_height - self.tile_h*1.5
    )
end

function DDD:updateBottom()
    tile_bottom = love.graphics.newImage('assets/tile_end.png')
    -- bottom tile, same w player, h = center + tile_h
    love.graphics.draw(
        tile_bottom,
        self.center_width - self.tile_w/2,
        self.center_height + self.tile_h/2
    )
end

function DDD:updateLeft()
    tile_left = love.graphics.newImage('assets/tile_end.png')
    -- left tile, same w player, h = center + tile_h
    love.graphics.draw(
        tile_left,
        self.center_width - self.tile_w*1.5,
        self.center_height - self.tile_h/2
    )
end

function DDD:updateRight()
    tile_right = love.graphics.newImage('assets/tile_end.png')
    -- right tile, same w player, h = center + tile_h
    love.graphics.draw(
        tile_right,
        self.center_width + self.tile_w/2,
        self.center_height - self.tile_h/2
    )
end