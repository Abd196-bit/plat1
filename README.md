# 🕹️ Pixel Leap

A fast-paced 2D platformer built with **Godot Engine**, featuring tight movement, hand-crafted levels, and a growing cast of quirky enemies.

![Godot](https://img.shields.io/badge/Godot-4.x-478cbf?logo=godotengine&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-in%20development-yellow)

---

## 📖 About

Pixel Leap is a 2D platformer where you guide a nimble hero through hazard-filled levels, collecting gems, dodging traps, and outrunning enemies. Built entirely in Godot, the project focuses on responsive controls and satisfying "game feel" — coyote time, jump buffering, and squash-and-stretch animation included.

## ✨ Features

- 🏃 Smooth, responsive character movement with acceleration/deceleration
- 🦘 Coyote time & jump buffering for forgiving, precise jumps
- 🎯 Wall jumps, dashes, and double jumps (unlockable abilities)
- 🌍 Multiple themed worlds with unique tilesets and enemies
- 💎 Collectibles, checkpoints, and hidden secrets
- 🎵 Custom soundtrack and SFX
- 🎮 Full controller and keyboard support

## 🖼️ Screenshots

> _Add screenshots or GIFs here once available_
>
> ```
> assets/screenshots/level1.png
> assets/screenshots/gameplay.gif
> ```

## 🛠️ Built With

- [Godot Engine 4.x](https://godotengine.org/) — game engine
- GDScript — scripting
- Aseprite — pixel art & animation
- (Optional) FMOD / Godot's built-in audio — sound

## 🚀 Getting Started

### Prerequisites

- [Godot Engine 4.x](https://godotengine.org/download) installed

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/pixel-leap.git

# Open Godot, click "Import", and select the project.godot file
```

### Running the Game

1. Open the project in Godot.
2. Set `res://scenes/main_menu.tscn` (or your entry scene) as the main scene under **Project > Project Settings > Application > Run**.
3. Press `F5` or click the ▶️ Play button.

## 🎮 Controls

| Action       | Keyboard         | Controller       |
|--------------|-------------------|-------------------|
| Move         | `A` / `D` or `←` `→` | Left Stick / D-Pad |
| Jump         | `Space`           | `A` / `Cross`     |
| Dash         | `Shift`           | `RB` / `R1`       |
| Pause        | `Esc`             | `Start`           |

## 📁 Project Structure

```
pixel-leap/
├── assets/
│   ├── sprites/
│   ├── audio/
│   └── tilesets/
├── scenes/
│   ├── player/
│   ├── levels/
│   ├── enemies/
│   └── ui/
├── scripts/
│   ├── player/
│   ├── enemies/
│   └── autoload/
├── project.godot
└── README.md
```

## 🗺️ Roadmap

- [ ] World 1 — Grasslands
- [ ] World 2 — Caves
- [ ] World 3 — Sky Ruins
- [ ] Boss battles
- [ ] Save/load system
- [ ] Level editor support

## 🤝 Contributing

Contributions, bug reports, and feature suggestions are welcome!

1. Fork the repo
2. Create a feature branch (`git checkout -b feature/cool-thing`)
3. Commit your changes (`git commit -m "Add cool thing"`)
4. Push to the branch (`git push origin feature/cool-thing`)
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Godot Engine community & documentation
- Inspiration from classic platformers like *Celeste* and *Super Meat Boy*
- Asset packs / fonts credited in `CREDITS.md`
