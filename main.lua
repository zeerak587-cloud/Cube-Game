local Player = require("player")
local Cubes = require("cubes")

function lovr.draw(pass)
    -- Floor
    pass:setColor(.3, .8, .3)
    pass:box(0, -0.5, 0, 50, 1, 50)

    -- Player
    pass:setColor(0, 0, 1)
    pass:box(Player.x, Player.y, Player.z, 1, 2, 1)

    -- Falling cubes
    pass:setColor(1, 0, 0)

    for _, cube in ipairs(Cubes.list) do
        pass:box(cube.x, cube.y, cube.z, 1, 1, 1)
    end
end
