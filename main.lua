local Player = require("player")
local Cubes = require("cubes")
local Rounds = require("rounds")
local Collision = require("collision")

function lovr.update(dt)
    Player.update(dt)
    Cubes.update(dt)
    Rounds.update(dt)

    for _, cube in ipairs(Cubes.list) do
        if Collision.playerCube(Player, cube) then
            Player.reset()
            Cubes.clear()
            Rounds.reset()
            break
        end
    end
end
