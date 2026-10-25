---
name: GML pitfalls
description: Common GameMaker mistakes. Read when reviewing, debugging or refactoring GML code.
---
- `var` variables exist only inside the current event or function; they are not visible in other events.
- Inside `with (obj) { }`, `self` is the instance being looped and `other` is the caller.
- `obj_x.var` reads from one arbitrary instance and errors if none exist; check `instance_exists(obj_x)` or use `with`/`instance_find`.
- Structs are references: `b = a` does not copy it.
- ds_list/ds_map/ds_grid, surfaces and buffers are not garbage collected; free them or they leak.
- Strings and numbers do not concatenate implicitly; wrap numbers in `string()`.
- Never compare floats with `==`; use `abs(a - b) < epsilon`.
- Drawing only works in Draw events (or targeting a surface); drawing in Step does nothing visible.
- Functions from old GMS1 projects (e.g. `instance_create`) may not exist; use the layer-based versions.
