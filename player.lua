local Player = {}

Player.x = 0
Player.y = 1
Player.z = 0
Player.speed = 5

function Player.update(dt)
    if lovr.keyboard.isDown("w") then
        Player.z = Player.z - Player.speed * dt
    end

    if lovr.keyboard.isDown("s") then
        Player.z = Player.z + Player.speed * dt
    end

    if lovr.keyboard.isDown("a") then
        Player.x = Player.x - Player.speed * dt
    end

    if lovr.keyboard.isDown("d") then
        Player.x = Player.x + Player.speed * dt
    end
end

function Player.reset()
    Player.x = 0
    Player.y = 1
    Player.z = 0
end

return Player
