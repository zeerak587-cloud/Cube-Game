local Collision = {}

function Collision.playerCube(player, cube)
    return
        math.abs(player.x - cube.x) < 1 and
        math.abs(player.y - cube.y) < 1 and
        math.abs(player.z - cube.z) < 1
end

return Collision
