---
name: GML step events
globs: ["**/Step_*.gml", "**/Alarm_*.gml"]
---
Step/Alarm code runs every frame: avoid allocating structs, arrays or strings per frame, avoid loops over all instances, cache lookups in variables.
Use `instance_exists()` before touching another instance. Keep drawing out of Step.
