# Game Over Screen Variants - Visual Comparison

## Quick Visual Reference

This document provides a text-based visual description of each variant to help with team evaluation.

---

## Variant 1: Clean Centered Layout

```
┌────────────────────────────────────────────────────────┐
│                                                        │
│                  [Dark overlay 70%]                    │
│                                                        │
│                                                        │
│                    ╔════════════╗                      │
│                    ║            ║                      │
│                    ║  GAME OVER ║                      │
│                    ║            ║                      │
│                    ╚════════════╝                      │
│                                                        │
│                                                        │
│                  ┌──────────────┐                      │
│                  │   RESTART    │                      │
│                  └──────────────┘                      │
│                                                        │
│                  ┌──────────────┐                      │
│                  │     QUIT     │                      │
│                  └──────────────┘                      │
│                                                        │
│                                                        │
└────────────────────────────────────────────────────────┘

Visual Characteristics:
- Large bold "GAME OVER" text (80px)
- Centered vertically and horizontally
- Two prominent blue buttons with rounded corners
- Generous spacing between elements
- Simple, uncluttered design
- Semi-transparent dark background
```

**Color Scheme:**
- Background: Black with 70% opacity
- Title: Light blue (#93EBff) with dark blue outline
- Buttons: Blue (#3366CC) with white text
- Button hover: Lighter blue tint

---

## Variant 2: Detailed Stats-Based Layout

```
┌────────────────────────────────────────────────────────┐
│                                                        │
│              [Dark overlay 70%]                        │
│                                                        │
│       ╔════════════════════════════════════╗           │
│       ║         GAME OVER                 ║           │
│       ║───────────────────────────────────║           │
│       ║                                   ║           │
│       ║  TIME SURVIVED:         00:00     ║           │
│       ║  LEVEL REACHED:            1      ║           │
│       ║                                   ║           │
│       ║───────────────────────────────────║           │
│       ║                                   ║           │
│       ║    ┌────────────────────┐         ║           │
│       ║    │  RESTART LEVEL     │         ║           │
│       ║    └────────────────────┘         ║           │
│       ║    ┌────────────────────┐         ║           │
│       ║    │   MAIN MENU        │         ║           │
│       ║    └────────────────────┘         ║           │
│       ║    ┌────────────────────┐         ║           │
│       ║    │   QUIT GAME        │         ║           │
│       ║    └────────────────────┘         ║           │
│       ║                                   ║           │
│       ╚════════════════════════════════════╝           │
│                                                        │
└────────────────────────────────────────────────────────┘

Visual Characteristics:
- Bordered panel with blue accent (#4D80E6)
- "GAME OVER" title (70px)
- Stats section with labels and values
- Horizontal divider lines
- Three action buttons stacked vertically
- Structured, information-rich layout
- Panel background: Dark blue-gray with high opacity
```

**Color Scheme:**
- Panel Background: Dark blue-gray (#19263F) with 95% opacity
- Panel Border: Blue (#4D80E6)
- Title: Light blue (#93EBff) with outline
- Stat Labels: Light blue (#B3D9FF)
- Stat Values: White
- Buttons: Blue (#3366CC) with white text
- Separators: Blue tint

---

## Variant 3: Minimal Compact Layout

```
┌────────────────────────────────────────────────────────┐
│                                                        │
│              [Light overlay 50%]                       │
│                                                        │
│                                                        │
│                  ┌──────────────┐                      │
│                  │  GAME OVER   │                      │
│                  │              │                      │
│                  │ Better luck  │                      │
│                  │  next time...│                      │
│                  │              │                      │
│                  │ ┌──────────┐ │                      │
│                  │ │ RESTART  │ │                      │
│                  │ └──────────┘ │                      │
│                  │ ┌──────────┐ │                      │
│                  │ │   QUIT   │ │                      │
│                  │ └──────────┘ │                      │
│                  └──────────────┘                      │
│                                                        │
│                                                        │
│                                                        │
└────────────────────────────────────────────────────────┘

Visual Characteristics:
- Compact, centered design
- Medium "GAME OVER" text (60px)
- Encouraging subtext (20px, gray)
- Smaller buttons with minimal styling
- Dark borders on buttons
- Fades in smoothly (1 second animation)
- Lighter background overlay
- Less visual weight overall
```

**Color Scheme:**
- Background: Black with 50% opacity (lighter than others)
- Title: Light blue (#93EBff) with outline
- Subtext: Gray (#B3B3B3)
- Buttons: Very dark gray (#262626) with blue border
- Button text: White/Light gray
- Hover: Lighter tint

**Animation:**
- Entire UI fades in from transparent to opaque over 1 second
- Smooth, gentle appearance

---

## Side-by-Side Comparison

### Screen Space Usage

```
Variant 1:           Variant 2:           Variant 3:
┌─────────┐          ┌─────────┐          ┌─────────┐
│         │          │   ╔═╗   │          │         │
│         │          │   ║ ║   │          │    ●    │
│    █    │          │   ║ ║   │          │         │
│         │          │   ║ ║   │          │         │
│         │          │   ╚═╝   │          │         │
└─────────┘          └─────────┘          └─────────┘
  Medium               Large               Small
```

### Information Density

```
Variant 1: ▪ Low
Variant 2: ▪▪▪ High (Stats + 3 buttons)
Variant 3: ▪ Low (+ subtext)
```

### Visual Impact

```
Variant 1: ████████░░ (8/10) Bold and clear
Variant 2: ██████████ (10/10) Professional and detailed
Variant 3: ██████░░░░ (6/10) Subtle and gentle
```

---

## Recommended Use Cases

### Variant 1: Clean Centered
✓ Action games
✓ Fast-paced gameplay
✓ Players who value simplicity
✓ Modern, professional aesthetic
✓ Quick restart is priority

### Variant 2: Detailed Stats
✓ Strategy games
✓ Score-based games
✓ Games with progression tracking
✓ When player feedback is important
✓ Multiple navigation paths needed
✓ Professional/serious tone

### Variant 3: Minimal Compact
✓ Casual games
✓ Artistic/indie games
✓ Softer, friendlier tone
✓ Games where atmosphere matters
✓ Players prefer unobtrusive UI
✓ Smooth, polished experience

---

## Team Poll Questions

When evaluating, consider:

1. **Which variant is most readable at a glance?**
   - Consider title size, contrast, layout clarity

2. **Which variant best fits our game's tone?**
   - Bold (V1), Professional (V2), or Gentle (V3)

3. **Do we need statistics display?**
   - Only Variant 2 shows stats

4. **How important is the Main Menu button?**
   - Only Variant 2 has this option

5. **Which animation style do we prefer?**
   - Instant (V1, V2) or Fade-in (V3)

6. **What emotional response should the game over screen evoke?**
   - Neutral (V1), Informative (V2), Encouraging (V3)

---

## Integration Examples

### Example 1: Player Death
```gdscript
# In player script
func die():
    var game_over = preload("res://Assets/UI/GameOver/game_over_variant1.tscn").instantiate()
    get_tree().root.add_child(game_over)
```

### Example 2: With Stats (Variant 2)
```gdscript
# In game manager
func player_died():
    var game_over = preload("res://Assets/UI/GameOver/game_over_variant2.tscn").instantiate()
    game_over.set_stats(play_time, current_level)
    get_tree().root.add_child(game_over)
```

### Example 3: Level Fail Condition
```gdscript
# In level manager
func on_time_expired():
    var game_over = preload("res://Assets/UI/GameOver/game_over_variant3.tscn").instantiate()
    add_child(game_over)
```

---

## Modification Guidelines

### Easy Modifications
- Button text changes
- Color adjustments
- Font size tweaks
- Spacing adjustments

### Medium Modifications
- Add/remove buttons
- Change layout orientation
- Adjust animations
- Add background blur

### Advanced Modifications
- Add particle effects
- Integrate sound effects
- Add screen shake on appearance
- Implement transition animations

---

## File References

- **Variant 1**: `Assets/UI/GameOver/game_over_variant1.tscn`
- **Variant 2**: `Assets/UI/GameOver/game_over_variant2.tscn`
- **Variant 3**: `Assets/UI/GameOver/game_over_variant3.tscn`
- **Test Scene**: `Assets/UI/GameOver/game_over_test_scene.tscn`
- **Documentation**: `Assets/UI/GameOver/README.md`

To preview variants, open the test scene and press 1, 2, or 3 to switch between them.
