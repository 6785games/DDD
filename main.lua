debug=true

function love.load()

    Object = require "lib.classic"
    Vector = require "lib.vector"

    require "const"
    require "game.levels"
    require "game.menu"
    require "game.ddd"

    menu = MENU()

    ddd = DDD()
end

function love.update(dt)
    ddd:update(dt)
end

function love.draw()
    ddd:main_screen()
end
