---
name: GML draw events
globs: ["**/Draw_*.gml"]
---
No game logic in Draw events. Reset any draw state you change (draw_set_color, draw_set_alpha, draw_set_font, draw_set_halign/valign) before leaving.
Draw GUI uses GUI-layer coordinates, not room coordinates. Check `surface_exists()` before drawing to or from a surface.
