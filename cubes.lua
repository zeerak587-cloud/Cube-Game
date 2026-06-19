local Cubes = {}

Cubes.list = {}

function Cubes.spawn()
    table.insert(Cubes.list, {
        x = math.random(-20,20),
        y = 20,
        z = math.random(-20,20)
    })
end

function Cubes.update(dt)
    for i = #Cubes.list, 1, -1 do
        local cube = Cubes.list[i]

        cube.y = cube.y - 8 * dt

        if cube.y < -5 then
            table.remove(Cubes.list, i)
        end
    end
end

function Cubes.clear()
    Cubes.list = {}
end

return Cubes
