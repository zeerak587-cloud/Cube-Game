# Cube Game

A simple 3D survival game written in Lua using LÖVR.

## Gameplay

- Move using WASD.
- Red cubes fall from the sky.
- Touching a cube instantly kills you.
- The game starts at Round 1.
- The round number determines how many cubes spawn.
- After Round 32, rounds reset back to Round 1.

## Controls

| Key | Action |
|------|---------|
| W | Move Forward |
| A | Move Left |
| S | Move Backward |
| D | Move Right |

## Requirements

- LÖVR 0.18.0 or newer

Download:

https://lovr.org/

## Running

From the project folder:

```bash
lovr .
```

## Project Structure

```text
cube-survival/
├── main.lua
├── player.lua
├── cubes.lua
├── rounds.lua
├── collision.lua
└── README.md
```

## Files

### main.lua

Main game loop. Updates all game systems.

### player.lua

Handles:
- Player position
- Movement
- Resetting after death

### cubes.lua

Handles:
- Cube spawning
- Cube updates
- Cube cleanup

### rounds.lua

Handles:
- Round timer
- Round progression
- Round reset

### collision.lua

Handles:
- Player/cube collision detection

## Future Features

- First-person camera
- Mouse look
- Score counter
- Sound effects
- Main menu
- Pause menu
- Difficulty settings
- Powerups
- Online multiplayer

## License

MIT License
