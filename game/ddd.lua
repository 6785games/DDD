DDD = Object:extend()

function DDD:new()
    self.player = love.graphics.newImage('assets/tile_player.png')
    self.tile_w, self.tile_h = self.player:getPixelDimensions()
    
    win_width, win_height, flags = love.window.getMode()
    love.window.setTitle("DDD")
    self.center_width = win_width / 2
    self.center_height = win_height / 2

    self.tiles = {}
end

function DDD:update(dt)
	-- I always start with an easy way to exit the game
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

	if love.keyboard.isDown('1') then
        player.x = player.x - (player.speed*dt)
    elseif love.keyboard.isDown('left','a') then
        player.x = player.x - (player.speed*dt)
	elseif love.keyboard.isDown('right','d') then
		player.x = player.x + (player.speed*dt)
    elseif love.keyboard.isDown('up','w') then
        player.x = player.x - (player.speed*dt)
	elseif love.keyboard.isDown('down','s') then
		player.x = player.x + (player.speed*dt)
	end
end

function DDD:getStage(stage)

end

function DDD:main_screen()
    self:updatePlayer()
    self:updateTop('assets/tile_end.png')
    self:updateBottom('assets/tile_end.png')
    self:updateRight('assets/tile_end.png')
    self:updateLeft('assets/tile_end.png')
    start_text = "PRESS SPACE TO START"
    love.graphics.print(start_text, self.center_width - 70, self.center_height + 200)
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

function DDD:updateTop(tile_image)
    tile_top = love.graphics.newImage(tile_image)
    -- top tile, same w player, h = center - tile_h
    love.graphics.draw(
        tile_top,
        self.center_width - self.tile_w/2,
        self.center_height - self.tile_h*1.5
    )
end

function DDD:updateBottom(tile_image)
    tile_bottom = love.graphics.newImage(tile_image)
    -- bottom tile, same w player, h = center + tile_h
    love.graphics.draw(
        tile_bottom,
        self.center_width - self.tile_w/2,
        self.center_height + self.tile_h/2
    )
end

function DDD:updateLeft(tile_image)
    tile_left = love.graphics.newImage(tile_image)
    -- left tile, same w player, h = center + tile_h
    love.graphics.draw(
        tile_left,
        self.center_width - self.tile_w*1.5,
        self.center_height - self.tile_h/2
    )
end

function DDD:updateRight(tile_image)
    tile_right = love.graphics.newImage(tile_image)
    -- right tile, same w player, h = center + tile_h
    love.graphics.draw(
        tile_right,
        self.center_width + self.tile_w/2,
        self.center_height - self.tile_h/2
    )
end