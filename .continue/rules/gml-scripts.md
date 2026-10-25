---
name: GML scripts
globs: ["scripts/**/*.gml"]
---
Prefer small named functions; use constructors for data types and `static` for shared methods. Add a `/// @function name(args)` doc comment above each function.
Pass values in as arguments instead of reading instance variables or globals where practical.
