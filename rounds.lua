local Cubes = require("cubes")

local Rounds = {}

Rounds.current = 1
Rounds.timer = 0

function Rounds.update(dt)
    Rounds.timer = Rounds.timer + dt

    if Rounds.timer >= 5 then
        Rounds.timer = 0

        for i = 1, Rounds.current do
            Cubes.spawn()
        end

        Rounds.current = Rounds.current + 1

        if Rounds.current > 32 then
            Rounds.current = 1
        end
    end
end

function Rounds.reset()
    Rounds.current = 1
    Rounds.timer = 0
end

return Rounds
