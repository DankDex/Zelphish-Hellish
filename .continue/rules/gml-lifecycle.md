---
name: GML create and cleanup
globs: ["**/Create_*.gml", "**/Destroy_*.gml", "**/CleanUp_*.gml"]
---
Initialise every instance variable in Create so other code never reads an unset variable.
Anything created must be freed: ds_* structures, surfaces, buffers, vertex buffers, time sources. Free in Clean Up (or Destroy for ds/instances).
