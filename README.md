# 🕹️ 2D Character Game — Processing (Java)

A simple 2D game built in **Processing (Java)** as part of COMP1000 Introduction to Computer Programming. The player controls a custom character across a grid-based canvas, avoiding randomly placed obstacles.

---

## 🎮 Gameplay

- Move your character around a **700×700 canvas** using the **arrow keys**
- Dodge **two randomly placed obstacles** each run — no game is ever the same
- A **vertical trail** follows your character from their position to the top of the canvas
- Collide with an obstacle and it's **game over**

---

## ✨ Features

| Feature | Description |
|---|---|
| Custom character | Complex shape built from 3+ primitives (lines, ellipses, rectangles) |
| Arrow key movement | Moves character in 70px increments per keypress |
| Pac-Man boundaries | Walking off one edge wraps the character to the opposite side |
| Dynamic trail | Vertical line tracks the character's x-position in real time |
| Random obstacles | Two rectangular obstacles with randomised positions on each run |
| Collision detection | Game over screen triggered on obstacle contact |

---

## 🛠️ Built With

- [Processing](https://processing.org/) — Java-based creative coding environment
- Pure Processing drawing primitives — no external libraries

---

## 🚀 How to Run

1. Install [Processing](https://processing.org/download)
2. Open `COMP1000.pde` in the Processing IDE
3. Click **Run** (▶)

---

## 📁 Project Structure

```
COMP1000.pde   # Single-file Processing sketch (all logic and drawing)
```

---

## 🧠 Concepts Demonstrated

- Keyboard input handling
- Collision detection (AABB)
- Randomised game state
- Boundary wrapping logic
- Procedural shape drawing
