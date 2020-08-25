debug=true

function love.load()

    Object = require "lib.classic"

    require "const"
    require "game.stages"
    require "game.menu"
    require "game.gui"
    require "game.tile"
    require "game.ddd"

    menu = MENU()
    gui = GUI()
    tile = TILE()

    ddd = DDD()
    
end

function love.update(dt)
    ddd:update(dt)
end

function love.draw()
    ddd:main_screen()
end
