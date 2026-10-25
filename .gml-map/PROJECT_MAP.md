# Project map: zombie survival

Generated 2026-10-25 01:23. Structure is read straight from the project files; summaries are written by a local AI model and can contain mistakes. A summary marked (outdated) was written before the code last changed.

## Quick index

- `oAmmoBox`: The `oAmmoBox` object represents an ammo pack in the game. [uses: oLight_Area, oPlayer]
- `oBullet_Parent`: `oBullet_Parent` is a parent object for various bullet types in the game. [uses: oEnemyParent]
- `oCamera`: The `oCamera` object manages the camera behavior, including following the player, handling smooth transitions, and displaying GUI elements such as the... [uses: draw_text_transformed_outlined, oPlayer, sLifebar, sWeaponBox_selected, sWeaponBox_unselected, weapon_scroll]
- `oCityGen`: No code in this resource.
- `oControl`: `oControl` is a persistent object that manages game settings, such as frame rate, room transitions, and debug overlays. [uses: Room1]
- `oDamageNumber`: The `oDamageNumber` object is responsible for displaying damage numbers in the game. [uses: damageNumber]
- `oEnemyNormalBullet`: The `oEnemyNormalBullet` object is a type of bullet used by enemies in the game. [uses: oBullet_Parent, oPlayer, oWall]
- `oEnemyParent`: `oEnemyParent` is a parent object for various enemy types in the game. [uses: chance, oBullet_Parent, oCamera, oDamageNumber, oPlayer, oWall, ...]
- `oEnemyParentConjurer`: `oEnemyParentConjurer` is an enemy object that can spawn zombies and chase the player. [uses: oEnemyParent, oPlayer, oWall, oZombie]
- `oEnemyParentGasser`: `oEnemyParentGasser` is an enemy object that chases the player and emits gas. [uses: oEnemyParent, oEnemyParentMelee, oGasArea, oPlayer, oWall, shoot_bullet]
- `oEnemyParentMelee`: `oEnemyParentMelee` is an enemy object that chases the player using A* pathfinding while avoiding walls. [uses: oEnemyParent, oPlayer, oWall, oZombie]
- `oEnemyParentRanged`: `oEnemyParentRanged` is a parent object for ranged enemies in the game. [uses: oEnemyParent, oPlayer, oWall, shoot_bullet]
- `oEnemyRangedFlamethrower`: The `oEnemyRangedFlamethrower` object is a ranged enemy that chases the player and shoots bullets. [uses: oEnemyParentRanged, oFlameThrowerAmmoEnemy, oPlayer, oWall]
- `oEnemyRangedNormal`: No code in this resource. [uses: oEnemyParentRanged]
- `oEnemyRangedRocketLauncher`: No code in this resource. [uses: oEnemyParentRanged]
- `oExplosion`: The `oExplosion` object is a child of `oBullet_Parent` and is used to represent explosions in the game. [uses: oBullet_Parent, oCamera]
- `oExplosiveBarril`: `oExplosiveBarril` is an object that represents an explosive barrel in the game. [uses: oBullet_Parent, oExplosion, oGasArea, oPlayer, obj_shadow_caster, polygon_from_instance, ...]
- `oFlameThrower`: The `oFlameThrower` object is a child of `oGun_Parent` and is responsible for handling the shooting mechanics of a flame thrower weapon in the game. [uses: oFlameThrowerAmmo, oGun_Parent, oPlayer]
- `oFlameThrowerAmmo`: The `oFlameThrowerAmmo` object is a bullet-like entity used by the `oFlameThrower` object. [uses: oBullet_Parent, oEnemyParent, oPlayer]
- `oFlameThrowerAmmoEnemy`: The `oFlameThrowerAmmoEnemy` object is a bullet-like entity used by enemy ranged flamethrowers. [uses: oBullet_Parent, oEnemyParent, oPlayer]
- `oGame`: The `oGame` object is a persistent object that initializes global variables, sets up the game environment, and handles various key presses for game co... [uses: Test, init, oCamera, oEnemyParent, oLevelGen, oMap, ...]
- `oGasArea`: The `oGasArea` object is a child of `oBullet_Parent` and represents a gas area in the game. [uses: oBullet_Parent]
- `oGun_Parent`: `oGun_Parent` is a parent object for various types of guns in the game. [uses: oPlayer, shoot_bullet]
- `oHandGun`: No code in this resource. [uses: oGun_Parent]
- `oHandGunBullet`: The `oHandGunBullet` object is a child of `oBullet_Parent` and represents a bullet fired from a handgun. [uses: oBullet_Parent, oWall, oZombie]
- `oLantern_NOT_USED`: The `oLantern_NOT_USED` object is designed to follow the player and draw a black triangle fan shape that represents a field of view (FOV) cone. [uses: oPlayer]
- `oLevelGen`: The `oLevelGen` object is responsible for generating the level layout, spawning enemies, items, and the exit. [uses: chance, oAmmoBox, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyRangedNormal, ...]
- `oLight_Area`: No code in this resource. [uses: obj_light]
- `oLight_Passway_Area`: The `oLight_Passway_Area` object is a child of `obj_light` and is used by the `oPassWay` object. [uses: obj_light]
- `oMachineGun`: No code in this resource. [uses: oGun_Parent]
- `oMap`: The `oMap` object is a GUI element that displays a mini-map of the game world. [uses: oAmmoBox, oBullet_Parent, oEnemyParent, oPassWay, oPlayer, oWall, ...]
- `oMenuDeath`: The `oMenuDeath` object is a menu screen that appears when the player dies in the game. [uses: TextFunctions, rMenu, sArrow]
- `oMenuMain`: The `oMenuMain` object is a menu controller for the main menu of the game. [uses: Level, TextFunctions, sArrow]
- `oMenuPause`: The `oMenuPause` object is a pause menu for a game. [uses: TextFunctions, o_part_emitter_wiggle, rMenu, sArrow]
- `oPassWay`: The `oPassWay` object represents a gateway in the game. [uses: oLight_Passway_Area, oPlayer, oTriangle, sGateWay]
- `oPlayable`: No code in this resource.
- `oPlayer`: The `oPlayer` object represents the player character in the game. [uses: oBullet_Parent, oCamera, oEnemyParent, oHandGun, oMachineGun, oMenuDeath, ...]
- `oPlayerLight_Area`: No code in this resource. [uses: obj_light]
- `oPlayerLight_Beam`: The `oPlayerLight_Beam` object is a light beam that follows the player and points towards the mouse position. [uses: lighting_global, oPlayer, obj_light]
- `oPointTarget`: The `oPointTarget` object is a non-solid, non-persistent object placed in `Room1`. [uses: UsefulScripts]
- `oResize_NOT_USED`: The `oResize_NOT_USED` object is designed to adjust the room dimensions and resize the application surface based on the display resolution.
- `oRocket`: The `oRocket` object is a child of `oBullet_Parent` and represents a rocket in the game. [uses: oBullet_Parent, oEnemyParent, oExplosion, oPlayer, oWall, shoot_bullet]
- `oRocketLauncher`: No code in this resource. [uses: oGun_Parent]
- `oShadows_NOT_USED`: The `oShadows_NOT_USED` object is intended to create and draw shadows that follow the player. [uses: oPlayer, oWall]
- `oShotGun`: No code in this resource. [uses: oGun_Parent]
- `oShotGunBullet`: The `oShotGunBullet` object is a child of `oBullet_Parent` and is responsible for spawning multiple pellets (`oShotGunBulletPellet`) when it is create... [uses: oBullet_Parent, oPlayer, oShotGunBulletPellet, oWall]
- `oShotGunBulletPellet`: The `oShotGunBulletPellet` object is a child of `oBullet_Parent` and represents a bullet pellet fired from a shotgun. [uses: oBullet_Parent, oWall]
- `oSniperBullet`: The `oSniperBullet` object is a child of `oBullet_Parent` and uses the sprite `sBullet`. [uses: oBullet_Parent, oWall]
- `oSniperGun`: No code in this resource. [uses: oGun_Parent]
- `oSteadyDeltaTime`: The `oSteadyDeltaTime` object manages delta time for the game, ensuring smooth and consistent timing for game logic and particle systems.
- `oSteadyDeltaTime_1`: The `oSteadyDeltaTime_1` object is designed to manage and smooth out the delta time in a game, ensuring consistent timing across different frame rates...
- `oSteadyDeltaTime_2`: The `oSteadyDeltaTime_2` object is designed to manage and smooth out the delta time in a game, ensuring consistent timing across frames.
- `oTriangle`: The `oTriangle` object is a non-solid, non-persistent object with the sprite `sTriangle`. [uses: oPassWay, oPlayer]
- `oVoidWall`: The `oVoidWall` object is a non-solid, non-persistent object with a black sprite. [uses: oPlayer]
- `oWall`: `oWall` is an object that represents a brick wall in the game. [uses: oPlayer, obj_shadow_caster, polygon_from_instance]
- `oZombie`: `oZombie` is a melee enemy object that takes damage from bullets and handgun bullets, displays damage numbers, and dies when its health reaches zero. [uses: chance, oBullet_Parent, oCamera, oDamageNumber, oEnemyParentMelee, oHandGunBullet, ...]
- `oZombieSecond`: No code in this resource. [uses: oEnemyParentMelee]
- `o_old_part`: The `o_old_part` object is responsible for creating and managing a particle system. [uses: s_pixel]
- `o_part_emiter`: The `o_part_emiter` object is a particle emitter used in the game. [uses: AdvancedParticleSystem, s_pixel]
- `o_part_emiter2`: The `o_part_emiter2` object is a particle emitter that creates and manages two types of particles using the `AdvancedParticleSystem` script. [uses: AdvancedParticleSystem, s_pixel]
- `o_part_emiter2_delta`: The `o_part_emiter2_delta` object is a particle emitter that creates and manages two types of particles using the `AdvancedParticleSystem` script. [uses: AdvancedParticleSystem, s_pixel]
- `o_part_emiter_delta`: The `o_part_emiter_delta` object is a particle emitter that creates and manages a particle system. [uses: AdvancedParticleSystem, oPointTarget, s_pixel]
- `o_part_emiter_fire`: The `o_part_emiter_fire` object is a particle emitter that creates a fire effect. [uses: AdvancedParticleSystem, sFireParticles, sParticleSmoke, s_pixel]
- `o_part_emiter_fire_delta`: The `o_part_emiter_fire_delta` object is a particle emitter that creates and manages a fire effect with smoke and cinders. [uses: AdvancedParticleSystem, sFireParticles, sParticleSmoke, s_pixel]
- `o_part_emiter_firework2_delta`: The `o_part_emiter_firework2_delta` object is a particle emitter used to create a firework effect. [uses: AdvancedParticleSystem, sFirework2, s_pixel]
- `o_part_emiter_firework_delta`: The `o_part_emiter_firework_delta` object is a particle emitter used to create a firework effect. [uses: AdvancedParticleSystem, sFirework, s_pixel]
- `o_part_emitter_wiggle`: The `o_part_emitter_wiggle` object is a particle emitter used to create visual effects in the game. [uses: AdvancedParticleSystem, s_pixel_big]
- `o_part_rain_delta`: The `o_part_rain_delta` object is responsible for creating and managing a rain effect using an advanced particle system. [uses: AdvancedParticleSystem, s_pixel]
- `o_part_rain_moody`: The `o_part_rain_moody` object is a particle system designed to simulate rain. [uses: AdvancedParticleSystem, oPlayer, s_pixel]
- `obj_light`: The `obj_light` object is responsible for creating and managing different types of lights in the game. [uses: light_add_to_world, light_create_area, light_create_directional, light_create_line, light_create_point, light_create_spot, ...]
- `obj_light_renderer`: The `obj_light_renderer` object is responsible for rendering lighting and shadows in the game. [uses: composite_shadow_map, draw_shadow_map, lighting_debug_shadow_casters, lighting_get_active_camera, lighting_global]
- `obj_lighting_init`: The `obj_lighting_init` object is responsible for initializing and cleaning up lighting in the game. [uses: lighting_free, lighting_global]
- `obj_shadow_caster`: The `obj_shadow_caster` object is a base object used for creating shadow casters in a game. [uses: lighting_global]
- `AdvancedParticleSystem`: This script defines a comprehensive particle system for GameMaker Studio 2.3+, including particle creation, updating, drawing, and destruction. [uses: oSteadyDeltaTime]
- `AdvancedParticleSystem_1`: This script defines an advanced particle system with various functionalities for creating, updating, and drawing particles. [uses: AdvancedParticleSystem, oSteadyDeltaTime]
- `AdvancedParticleSystem_2`: This script defines a complex particle system with various features such as different shapes, distributions, gravity, and color/alpha blending. [uses: AdvancedParticleSystem, oSteadyDeltaTime]
- `TextFunctions`: This script provides various functions for drawing text with different effects such as shadows, shaking, and typewriter-like text effects. [uses: draw_text_transformed_outlined]
- `UsefulScripts`: The `UsefulScripts` script contains various utility functions for common tasks such as approaching a value, calculating a wave, drawing text with outl...
- `chance`: The `chance` script is a utility function designed to determine if a given percentage chance condition is met.
- `composite_shadow_map`: The `composite_shadow_map` script is responsible for compositing shadow maps from all the lights in a scene. [uses: get_next_pot, light_cull, light_draw_shadow_map, light_enumerate_extensions, light_maintain_shadow_map, lighting_get_active_camera, ...]
- `cross_product`: The `cross_product` script calculates the cross product of two 2D vectors. [uses: lighting_global]
- `damageNumber`: The `damageNumber` script is designed to display a damage number popup in a game. [uses: draw_text_transformed_outlined]
- `draw_shadow_map`: The `draw_shadow_map` script is designed to draw a composited shadow map at a specified position on the screen. [uses: lighting_global]
- `draw_text_transformed_outlined`: This script is designed to draw text with an outlined effect. [uses: TextFunctions]
- `ext_light_attenuation_apply`: This script is designed to apply light attenuation effects to a specified light in a game.
- `ext_light_attenuation_init`: This script initializes global variables and shader uniforms for light attenuation in a game, setting up parameters for controlling how light intensit... [uses: lighting_global]
- `ext_light_attenuation_reset`: This script, `ext_light_attenuation_reset`, is designed to reset the attenuation settings of a light after an extension module has been applied.
- `get_next_pot`: The script `get_next_pot` calculates the next power of two number greater than or equal to a given 32-bit integer.
- `init`: This script initializes various particle types used in the game, storing them in global variables for easy access.
- `keyboard_get_number`: This script is designed to determine which number key (0-9) is currently pressed on the keyboard.
- `light_acknowledge_shadow_caster`: This script is designed to remove one or more shadow casters from the ignore list of a specified light, allowing the light to acknowledge and cast sha... [uses: lighting_global]
- `light_add_extension`: This script is designed to add an extension module to a light object. [uses: lighting_global]
- `light_add_to_world`: This script is designed to add a light to the world, specifically by adding it to a global list that tracks all lights for compositing purposes.
- `light_create`: The `light_create` script is responsible for creating a new light object with specified properties such as position, type, color, range, and intensity... [uses: light_add_extension, lighting_global, spr_lut_light_intensity_area, spr_lut_light_intensity_line, spr_lut_light_intensity_linear, spr_lut_light_intensity_spot]
- `light_create_area`: This script is designed to create a new area light in a game using the GameMaker Language (GML). [uses: light_create, lighting_global]
- `light_create_directional`: This script creates a directional light in a game using the GameMaker Language (GML). [uses: light_create, lighting_global]
- `light_create_extension`: This script creates an extension module instance for lighting effects. [uses: lighting_global]
- `light_create_line`: This script is designed to create a line light in a game. [uses: light_create, lighting_global]
- `light_create_point`: This script is used to create a new point light in a game. [uses: light_create, lighting_global]
- `light_create_spot`: This script is designed to create a spot light in a game using GameMaker Language (GML). [uses: light_create, lighting_global]
- `light_cull`: The `light_cull` script determines whether a given light is culled (should not be rendered) for the current camera. [uses: lighting_global]
- `light_destroy`: The `light_destroy` script is designed to properly destroy a light object by freeing up all associated resources such as vertex buffers, shadow maps,... [uses: lighting_global]
- `light_draw_shadow_map`: This script, `light_draw_shadow_map`, is responsible for drawing a light's shadow map to a specified surface. [uses: light_update, lighting_global]
- `light_enumerate_extensions`: This script enumerates and applies all extension modules of a given light by executing a specified script for each extension. [uses: lighting_global]
- `light_ignore_shadow_caster`: This script is designed to configure a light to ignore one or more shadow casters, effectively making those shadow casters invisible to the specified... [uses: lighting_global]
- `light_maintain_shadow_map`: The `light_maintain_shadow_map` script is responsible for managing the shadow map for a given light. [uses: get_next_pot, lighting_global]
- `light_remove_from_world`: This script is designed to remove a specified light from a global list of lights in the game world.
- `light_static_get_array`: This script retrieves the static buffer for a given light and shadow caster pair from a light's static storage. [uses: lighting_global]
- `light_static_set_array`: This script sets a static buffer for a light and shadow caster pair. [uses: lighting_global]
- `light_trace_polygon`: The `light_trace_polygon` script is designed to trace a shadow for a given polygon from a provided light source. [uses: lighting_global]
- `light_update`: The `light_update` script updates the vertex buffer for a given light, handling shadow casting and culling shadow casters based on their position and... [uses: light_static_get_array, light_static_set_array, light_trace_polygon, lighting_get_active_camera, lighting_global, obj_shadow_caster]
- `lighting_debug_shadow_casters`: This script is designed to debug shadow casters by drawing their polygons on the screen. [uses: lighting_global, obj_shadow_caster]
- `lighting_free`: The `lighting_free` script is designed to free up resources used by the lighting engine in a game. [uses: light_destroy]
- `lighting_get_active_camera`: This script retrieves the active camera's port, which includes its position and dimensions.
- `lighting_global`: This script initializes the lighting engine for a game, setting up global variables, enums, and macros necessary for the lighting system. [uses: ext_light_attenuation_apply, ext_light_attenuation_init, ext_light_attenuation_reset, light_create_extension, obj_light_renderer]
- `lighting_post_composite`: This script, `lighting_post_composite`, is executed after the lighting map has been composited. [uses: lighting_global]
- `lighting_pre_composite`: This script, `lighting_pre_composite`, is executed before compositing the lighting map. [uses: lighting_get_active_camera, lighting_global, obj_shadow_caster, polygon_get_area]
- `lighting_set_dirty`: The `lighting_set_dirty` script is used to mark the lighting system as "dirty," which forces it to recomposite the shadow map the next time it is draw... [uses: lighting_global]
- `lighting_update_camera`: This script updates a custom camera used in a lighting system.
- `path_get_area`: This script calculates the bounding area of a given path in GameMaker, returning an array containing the minimum and maximum x and y coordinates of th...
- `point_in_polygon`: The `point_in_polygon` script checks if a given point is inside a specified polygon. [uses: lighting_global, tri_direction]
- `polygon_create`: The `polygon_create` script is designed to create a polygon from a set of points. [uses: lighting_global]
- `polygon_from_instance`: The `polygon_from_instance` script creates a polygon representation of an instance, optionally considering a rotation. [uses: polygon_create]
- `polygon_from_path`: The `polygon_from_path` script creates a polygon from a given path resource, adjusting for an origin point. [uses: path_get_area, polygon_create]
- `polygon_get_area`: This script calculates the bounding box area of a polygon and returns it as an array of four points. [uses: lighting_global]
- `screenShake`: The `screenShake` script is designed to apply a shaking effect to the screen by adjusting the camera's view angle.
- `shadow_casters_exist`: This script checks if any instances of the object `obj_shadow_caster` exist in the game world. [uses: obj_shadow_caster]
- `shadow_map_ensure_exists`: This script ensures that a specified shadow map is valid and creates it if necessary. [uses: lighting_get_active_camera, lighting_global]
- `shoot_bullet`: The `shoot_bullet` script is designed to create and configure a bullet instance at a specified position with given attributes such as damage, speed, a...
- `tri_direction`: The `tri_direction` script determines whether a given triangle is oriented clockwise or counter-clockwise based on its vertices. [uses: cross_product, lighting_global]
- `weapon_scroll`: The `weapon_scroll` script is designed to scroll through the player's weapons, selecting the next or previous weapon based on the direction of the scr... [uses: oPlayer]
- sprites (57): fock, oBlack_64, sAmmoPack, sArrow, sBrickWall, sBullet, sConjurer, sConjurer_hurt, sCursor, sEnemyNormalBullet, sEnemy_Ranged_Flamethrower, sEnemy_Ranged_Normal, sEnemy_Ranged_Normal_Hurt, sEnemy_Ranged_RocketLauncher, sExplosion_Area, sExplosiveBarril, sFireParticles, sFirework, sFirework2, sGas_Area, sGateWay, sHandgun, sLifebar, sMachinegun, sOutline_circle, sParticleSmoke, sPavement, sPlayer, sPlayer_hurt, sPlayer_shooting, sRocket, sRocketLauncher, sShotGunBulletPellet, sShotgun, sSniper, sTriangle, sWall, sWalls_tileSet, sWeaponBox_selected, sWeaponBox_unselected, sZombie, sZombie_hurt, sZombie_second, s_pixel, s_pixel_big, spr_light_area, spr_light_directional, spr_light_line, spr_light_point, spr_light_point_1, spr_light_renderer, spr_light_renderer_1, spr_light_spot, spr_lut_light_intensity_area, spr_lut_light_intensity_line, spr_lut_light_intensity_linear, spr_lut_light_intensity_spot
- rooms (11): Level, LightingTest, Room1, Room2, Room3, Room4, Room5, Room6, Test, rMenu, room0

## Objects

### oAmmoBox
- parent: none | sprite: sAmmoPack
- Events: Create (5 lines), Destroy (1 lines), Alarm 0 (5 lines), Step (8 lines), Collision with oPlayer (24 lines)
- Uses: objects: oLight_Area, oPlayer
- Used by: objects: oLevelGen, oMap

**AI summary**
**Summary**
The `oAmmoBox` object represents an ammo pack in the game. It creates a light effect and emits particles. When the player collides with it, the player's weapon's ammo is refilled to half of its total capacity. The object deactivates itself if the player is too far away.

**Events**
- **Create_0**: Creates a light instance and sets an alarm to trigger every 5 steps.
- **Destroy_0**: Destroys the associated light instance.
- **Alarm_0**: Checks if the player is too far away and deactivates the ammo box if so. Resets the alarm.
- **Step_0**: Creates particles around the ammo box if `create_particle` is true, then toggles `create_particle`.
- **Collision_oPlayer**: Refills the player's weapon ammo to half of its total capacity when the player collides with the ammo box and destroys the ammo box.

**Dependencies**
- **Variables**: `pause`, `bullets`, `bullets_total`, `weapon`
- **Globals**: `partSystem`, `ptItemAura`
- **Objects**: `oLight_Area`, `oPlayer`
- **Resources**: Creates a light instance and particle effects.

**Potential issues**
- None found.

### oBullet_Parent
- parent: none | sprite: none
- Events: Destroy (4 lines), Begin Step (12 lines), Collision with oEnemyParent (5 lines), Animation End (1 lines)
- Uses: objects: oEnemyParent
- Used by: objects: oEnemyNormalBullet, oEnemyParent, oExplosion, oExplosiveBarril, oFlameThrowerAmmo, oFlameThrowerAmmoEnemy, oGasArea, oHandGunBullet, oMap, oPlayer, oRocket, oShotGunBullet, oShotGunBulletPellet, oSniperBullet, oZombie

**AI summary**
**Summary**
`oBullet_Parent` is a parent object for various bullet types in the game. It handles basic bullet movement, collision with enemies, and destruction effects. It is used by multiple child objects representing different types of bullets and effects.

**Events**
- **Create**: Initializes particle effects for destruction.
- **Step**: Moves the bullet according to its speed and angle, checks if it is within the room bounds, and destroys itself if out of bounds.
- **Collision with oEnemyParent**: Destroys the bullet if it does not go through enemies and is not from an enemy.
- **Other**: Placeholder for stopping animation (currently commented out).

**Dependencies**
- **Variables**: `spd` (speed), `angle` (direction), `goes_through_enemies`, `bullet_from_enemy`.
- **Globals**: `global.partSystem`.
- **Resources**: `destroy_effect` (particle type).

**Potential issues**
- None found.

### oCamera
- parent: none | sprite: none
- Events: Create (42 lines), Destroy (3 lines), Step (96 lines), Mouse 60 (3 lines), Mouse 61 (3 lines), Draw (2 lines), Draw GUI (81 lines), Draw End (14 lines)
- Uses: objects: oPlayer; scripts: draw_text_transformed_outlined, weapon_scroll; sprites: sLifebar, sWeaponBox_selected, sWeaponBox_unselected
- Used by: objects: oEnemyParent, oExplosion, oGame, oPlayer, oZombie
- Placed in rooms: Test (x1)

**AI summary**
**Summary**
The `oCamera` object manages the camera behavior, including following the player, handling smooth transitions, and displaying GUI elements such as the weapon selection wheel, health bar, and other in-game information. It also handles mouse input for weapon scrolling.

**Events**
- **Create_0**: Initializes the camera, sets its size, and prepares data structures for weapon GUI information.
- **Destroy_0**: Frees the memory used by the `weapon_slot_info` data structure.
- **Step_0**: Updates the camera position to follow the player smoothly, handles camera shaking, and calculates the weapon scroll wheel's size and position.
- **Mouse_60**: Scrolls the weapon selection up.
- **Mouse_61**: Scrolls the weapon selection down.
- **Draw_64**: Draws various GUI elements such as the health bar, money, weapon information, and instructions.
- **Draw_73**: Draws additional GUI elements like the reloading bar.

**Dependencies**
- **Variables/Objects/Scripts**:
  - `oPlayer`: The player object that the camera follows.
  - `draw_text_transformed_outlined`: A script used for drawing outlined text.
  - `weapon_scroll`: A script used for scrolling weapons.
  - `sLifebar`, `sWeaponBox_selected`, `sWeaponBox_unselected`: Sprites used for the GUI.
  - `fDecrepit30`, `fArial_16`, `fNormal`: Fonts used for text rendering.
  - `draw_healthbar`: A function used for drawing the health bar.
  - `pause`: A global variable indicating whether the game is paused.
  - `fps`, `fps_real`: Global variables for frame rate information.
  - `num_enemies`: A global variable for the number of enemies.
  - `money`: A global variable for the player's money.
  - `oPlayer.weapon`: The player's current weapon, including properties like `magazine_check`, `bullets`, `state`, `reloading_frames`, and `reloading_frames_check`.
  - `oPlayer.weapons`: An array of the player's weapons.
  - `oPlayer.weapon.id`: The ID of the player's current weapon.
  - `oPlayer.weapon.gun_name`: The name of the player's current weapon.
  - `oPlayer.weapon.gun_sprite`: The sprite of the player's current weapon.

**Potential issues**
- None found.

### oCityGen
- parent: none | sprite: none
- Events: none with code
- Uses: none
- Used by: none

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oControl
- parent: none | sprite: none | flags: persistent
- Events: Create (15 lines), Alarm 0 (2 lines), Begin Step (9 lines), KeyPress (key code 27) (2 lines), KeyPress (key code 32) (2 lines), KeyPress (key code 38) (3 lines), KeyPress (key code 40) (3 lines), KeyPress (key code 81) (1 lines), KeyPress (key code 82) (1 lines), Draw GUI (5 lines)
- Uses: rooms: Room1
- Used by: none
- Placed in rooms: Room1 (x1), Room2 (x1), Room3 (x1), Room4 (x1), Room5 (x1), Room6 (x1)

**AI summary**
**Summary**
`oControl` is a persistent object that manages game settings, such as frame rate, room transitions, and debug overlays. It also handles key presses for game control actions like restarting the game or room, and displays debug information on the screen.

**Events**
- **Create_0**: Initializes the display size, sets the room target speed, and configures various game settings.
- **Alarm_0**: Enables the end game condition when the alarm triggers.
- **Step_1**: Updates the real FPS and checks for low FPS conditions.
- **KeyPress_27**: Ends the game when the Escape key is pressed.
- **KeyPress_32**: Moves to the next room or loops back to Room1 when the Space key is pressed.
- **KeyPress_38**: Increases the room target speed when the Up arrow key is pressed.
- **KeyPress_40**: Decreases the room target speed when the Down arrow key is pressed.
- **KeyPress_81**: Restarts the current room when the Q key is pressed.
- **KeyPress_82**: Restarts the entire game when the R key is pressed.
- **Draw_64**: Draws debug information about the room speed and real FPS on the screen.

**Dependencies**
- **Globals**: `global.particles_debug_mode`
- **Resources**: `fSmall` (font), `fa_left` (horizontal alignment), `fa_bottom` (vertical alignment)

**Potential issues**
- None found.

### oDamageNumber
- parent: none | sprite: none
- Events: Create (8 lines), Draw (6 lines)
- Uses: scripts: damageNumber
- Used by: objects: oEnemyParent, oZombie

**AI summary**
**Summary**
The `oDamageNumber` object is responsible for displaying damage numbers in the game. It handles the creation, drawing, and destruction of these numbers based on various properties like color, damage value, duration, angle, critical hit status, and scale.

**Events**
- **Create_0**: Initializes the damage number with default values such as color, damage, duration, angle, critical hit status, and scale.
- **Draw_0**: Calls the `damageNumber` script to draw the damage number and checks if the duration is less than -120 to destroy the instance.

**Dependencies**
- **Scripts**: `damageNumber`
- **Variables**: 
  - `color`: Set to `c_white`.
  - `damage`: Set to `1`.
  - `duration`: Set to `-90`.
  - `angle`: Set to `0`.
  - `crit`: Set to `false`.
  - `scale`: Set to `1`.

**Potential issues**
None found.

### oEnemyNormalBullet
- parent: oBullet_Parent | sprite: sEnemyNormalBullet
- Events: Step (2 lines), Collision with oPlayer (1 lines), Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oPlayer, oWall
- Used by: none

**AI summary**
**Summary**
The `oEnemyNormalBullet` object is a type of bullet used by enemies in the game. It inherits from `oBullet_Parent`, uses the sprite `sEnemyNormalBullet`, and is not solid or persistent. When it collides with the player or a wall, it destroys itself. It also creates a particle effect when it is destroyed.

**Events**
- **Step_0**: Creates a particle effect at the bullet's position with a direction range of `angle-15` to `angle+15`.
- **Collision_oPlayer**: Destroys the bullet instance when it collides with the player.
- **Collision_oWall**: Destroys the bullet instance when it collides with a wall.

**Dependencies**
- **Objects**: `oBullet_Parent`, `oPlayer`, `oWall`
- **Globals**: `global.partSystem`
- **Resources**: `sEnemyNormalBullet`, `destroy_effect`

**Potential issues**
- None found.

### oEnemyParent
- parent: obj_shadow_caster | sprite: sZombie
- Events: Create (13 lines), Destroy (1 lines), Alarm 0 (9 lines), Begin Step (15 lines), Collision with oBullet_Parent (56 lines), Collision with oEnemyParent (8 lines), Draw (21 lines)
- Uses: objects: oBullet_Parent, oCamera, oDamageNumber, oPlayer, oWall, obj_shadow_caster; scripts: chance, polygon_from_instance
- Used by: objects: oBullet_Parent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyParentMelee, oEnemyParentRanged, oFlameThrowerAmmo, oFlameThrowerAmmoEnemy, oGame, oLevelGen, oMap, oPlayer, oRocket

**AI summary**
**Summary**
`oEnemyParent` is a parent object for various enemy types in the game. It handles basic enemy behavior such as health management, state transitions (normal/hurt), collision with bullets, and drawing. It also manages proximity-based activation and deactivation relative to the player.

**Events**
- **Create_0**: Initializes the enemy's health, state, and polygon. Sets alarms and initializes variables.
- **Destroy_0**: Decrements the global enemy count.
- **Alarm_0**: Activates or deactivates the enemy instance based on its distance from the player. Resets the alarm.
- **Step_1**: Manages the enemy's state transitions and updates its polygon.
- **Collision_oBullet_Parent**: Handles damage from bullets, including critical hits, damage number display, death, and knockback.
- **Collision_oEnemyParent**: Handles collision with other enemy instances, causing them to push away.
- **Draw_0**: Draws the enemy sprite and health bar.

**Dependencies**
- **Variables/Objects/Scripts**:
  - `oBullet_Parent`: Used for collision detection.
  - `oCamera`: Used to shake the camera upon enemy death.
  - `oDamageNumber`: Used to create damage number instances.
  - `oPlayer`: Used for various calculations, such as distance and direction.
  - `oWall`: Used for collision detection to prevent enemies from pushing through walls.
  - `obj_shadow_caster`: Inherits from this object.
  - `chance`: Script used for determining critical hits.
  - `polygon_from_instance`: Script used to create a polygon from the enemy instance.
- **Globals**:
  - `global.partSystem`: Used for particle effects.
  - `global.money`: Increased when the enemy dies.
- **Other Resources**:
  - `sprite_normal`: Sprite used for the normal state.
  - `sprite_hurt`: Sprite used for the hurt state.
  - `particle_when_dead`: Particle effect for when the enemy dies.
  - `particle_when_hit`: Particle effect for when the enemy is hit.

**Potential issues**
- **None found**

### oEnemyParentConjurer
- parent: oEnemyParent | sprite: sConjurer
- Events: Alarm 1 (34 lines), Step (62 lines)
- Uses: objects: oEnemyParent, oPlayer, oWall, oZombie
- Used by: objects: oLevelGen

**AI summary**
**Summary**
`oEnemyParentConjurer` is an enemy object that can spawn zombies and chase the player. It uses pathfinding to move towards the player and has conditions to determine when to start chasing, stop chasing, and spawn enemies.

**Events**
- **Alarm_1**: Spawns a zombie at a random position around the conjurer and creates particles. Sets an alarm to repeat the process.
- **Step_0**: Checks if the player is in range and visible. If so, it starts chasing the player. If the player is within a certain distance, it stops chasing and starts spawning zombies.

**Dependencies**
- **Objects**: `oEnemyParent`, `oPlayer`, `oWall`, `oZombie`
- **Globals**: `global.partSystem`, `global.ptItemAura`
- **Variables**: `num_enemies`, `pause`, `chasing`, `stay_still`, `detection_range`, `distance_from_player`, `spd`, `grid`, `path`

**Potential issues**
- None found.

### oEnemyParentGasser
- parent: oEnemyParent | sprite: sZombie
- Events: Alarm 1 (9 lines), Step (49 lines), Collision with oEnemyParentMelee (8 lines)
- Uses: objects: oEnemyParent, oEnemyParentMelee, oGasArea, oPlayer, oWall; scripts: shoot_bullet
- Used by: objects: oLevelGen

**AI summary**
**Summary**
`oEnemyParentGasser` is an enemy object that chases the player and emits gas. It uses pathfinding to move towards the player and has an alarm event to periodically shoot gas.

**Events**
- **Step_0**: Checks if the player is in range and visible, starts chasing if so, and moves towards the player using pathfinding. It also checks if the player is within a certain range to start emitting gas.
- **Alarm_1**: If `showerTime` is true, it shoots gas and resets the alarm to 600. Otherwise, it resets the alarm to 5.
- **Collision_oEnemyParentMelee**: When colliding with `oEnemyParentMelee`, it pushes itself away from the colliding object.

**Dependencies**
- **Objects**: `oEnemyParent`, `oEnemyParentMelee`, `oGasArea`, `oPlayer`, `oWall`
- **Scripts**: `shoot_bullet`
- **Globals**: `global.ptEmpty`
- **Variables**: `chasing`, `pause`, `detection_range`, `start_gas_range`, `spd`, `grid`, `push`, `h_push`, `v_push`

**Potential issues**
- None found.

### oEnemyParentMelee
- parent: oEnemyParent | sprite: sZombie
- Events: Step (33 lines), Collision with oEnemyParentMelee (8 lines), Collision with oZombie (2 lines)
- Uses: objects: oEnemyParent, oPlayer, oWall, oZombie
- Used by: objects: oEnemyParentGasser, oZombie, oZombieSecond

**AI summary**
**Summary**
`oEnemyParentMelee` is an enemy object that chases the player using A* pathfinding while avoiding walls. It also handles collisions with other enemies and walls by pushing itself in the opposite direction of the collision.

**Events**
- **Step_0**: Checks if the player is in range and visible to start chasing. If chasing, it calculates a path to the player using A* pathfinding. If not chasing or paused, it ends the path.
- **Collision_oEnemyParentMelee**: Pushes the enemy in the opposite direction of the colliding object if it's not a wall.
- **Collision_oZombie**: Currently empty, no description or code provided.

**Dependencies**
- **Variables**: `chasing`, `detection_range`, `spd`, `pause`, `push`, `grid`.
- **Objects**: `oPlayer`, `oWall`, `oZombie`.
- **Functions**: `collision_circle`, `collision_line`, `path_add`, `mp_grid_add_instances`, `mp_grid_path`, `path_start`, `path_end`, `point_direction`, `lengthdir_x`, `lengthdir_y`, `place_meeting`.

**Potential issues**
- None found.

### oEnemyParentRanged
- parent: oEnemyParent | sprite: sEnemy_Ranged_Normal
- Events: Create (13 lines), Step (67 lines), Draw (12 lines)
- Uses: objects: oEnemyParent, oPlayer, oWall; scripts: shoot_bullet
- Used by: objects: oEnemyRangedFlamethrower, oEnemyRangedNormal, oEnemyRangedRocketLauncher

**AI summary**
**Summary**
`oEnemyParentRanged` is a parent object for ranged enemies in the game. It handles basic enemy behavior such as chasing the player, staying still to shoot, and firing bullets. It also manages the charging animation and pathfinding to avoid walls.

**Events**
- **Create_0**: Initializes the enemy's state, health, and other variables.
- **Step_0**: Handles the enemy's movement, pathfinding, and shooting behavior based on its state and proximity to the player.
- **Draw_0**: Draws the charging animation particles if the enemy is charging.

**Dependencies**
- **Variables/Objects/Scripts**:
  - `oEnemyParent`: Parent object.
  - `oPlayer`: Target for the enemy to chase and shoot at.
  - `oWall`: Obstacles to avoid during pathfinding.
  - `shoot_bullet`: Script to create and fire bullets.
- **Globals**:
  - `global.partSystem_top`: Particle system for the charging animation.
- **Other Resources**:
  - `path_add()`, `mp_grid_add_instances()`, `mp_grid_path()`: Pathfinding functions.
  - `charge_effect`, `shoot_effect`: Particle effects for charging and shooting.

**Potential issues**
- None found.

### oEnemyRangedFlamethrower
- parent: oEnemyParentRanged | sprite: sEnemy_Ranged_Flamethrower
- Events: Step (110 lines)
- Uses: objects: oEnemyParentRanged, oFlameThrowerAmmoEnemy, oPlayer, oWall
- Used by: none

**AI summary**
**Summary**
The `oEnemyRangedFlamethrower` object is a ranged enemy that chases the player and shoots bullets. It uses pathfinding to move towards the player and has a firing mechanism that depends on its distance and visibility to the player.

**Events**
- **Step_0**: Handles the enemy's movement, pathfinding, and shooting behavior based on its distance and visibility to the player.

**Dependencies**
- **Objects**: `oEnemyParentRanged`, `oFlameThrowerAmmoEnemy`, `oPlayer`, `oWall`
- **Variables**: `pause`, `chasing`, `detection_range`, `stay_still`, `distance_from_player`, `spd`, `grid`, `firerate`, `firerate_check`, `bullet_damage`, `shooting_effect`
- **Globals**: `pause`
- **Resources**: `path`, `bullet`

**Potential issues**
- None found.

### oEnemyRangedNormal
- parent: oEnemyParentRanged | sprite: sEnemy_Ranged_Normal
- Events: none with code
- Uses: objects: oEnemyParentRanged
- Used by: objects: oLevelGen

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oEnemyRangedRocketLauncher
- parent: oEnemyParentRanged | sprite: sEnemy_Ranged_RocketLauncher
- Events: none with code
- Uses: objects: oEnemyParentRanged
- Used by: objects: oLevelGen

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oExplosion
- parent: oBullet_Parent | sprite: sExplosion_Area | flags: invisible
- Events: Create (2 lines), Destroy (2 lines), Step (8 lines)
- Uses: objects: oBullet_Parent, oCamera
- Used by: objects: oExplosiveBarril, oRocket

**AI summary**
**Summary**
The `oExplosion` object is a child of `oBullet_Parent` and is used to represent explosions in the game. It creates a particle effect and shakes the camera when created, and it destroys itself after a certain number of frames.

**Events**
- **Create_0**: Initializes the `frames_until_it_disapears` variable to 5 and sets the camera shake frames to 5.
- **Step_0**: Creates particles at the explosion's position and decreases `frames_until_it_disapears` by 1 each step. If `frames_until_it_disapears` reaches 0, the instance is destroyed.
- **Destroy_0**: Currently empty.

**Dependencies**
- **Objects**: `oBullet_Parent`, `oCamera`
- **Globals**: `global.partSystem`
- **Resources**: `sExplosion_Area` (sprite), `destroy_effect` (particle effect)

**Potential issues**
- None found.

### oExplosiveBarril
- parent: obj_shadow_caster | sprite: sExplosiveBarril
- Events: Create (11 lines), Destroy (0 lines), Alarm 0 (4 lines), Step (0 lines), Collision with oBullet_Parent (9 lines)
- Uses: objects: oBullet_Parent, oExplosion, oGasArea, oPlayer, obj_shadow_caster; scripts: polygon_from_instance, shoot_bullet
- Used by: objects: oLevelGen

**AI summary**
**Summary**
`oExplosiveBarril` is an object that represents an explosive barrel in the game. It inherits from `obj_shadow_caster` and has a sprite `sExplosiveBarril`. The barrel is not solid and is not persistent. It has an alarm event that deactivates the instance if the player is more than 500 pixels away. When it collides with a bullet (excluding `oGasArea`), it triggers an explosion and destroys itself.

**Events**
- **Create_0**: Initializes bounding box variables and sets an alarm to trigger every 5 steps.
- **Alarm_0**: Checks if the player exists and is more than 500 pixels away. If so, it deactivates the instance and resets the alarm.
- **Collision_oBullet_Parent**: If the colliding object is not `oGasArea`, it shoots two bullets that create explosions, then destroys itself.

**Dependencies**
- **Variables/Objects**: Expects `oPlayer`, `oBullet_Parent`, `oExplosion`, and `oGasArea` to exist.
- **Scripts**: Uses `polygon_from_instance` and `shoot_bullet`.
- **Globals**: Reads `global.ptEmpty`.

**Potential issues**
- None found.

### oFlameThrower
- parent: oGun_Parent | sprite: none
- Events: Mouse 50 (36 lines), Mouse 56 (2 lines)
- Uses: objects: oFlameThrowerAmmo, oGun_Parent, oPlayer
- Used by: none

**AI summary**
**Summary**
The `oFlameThrower` object is a child of `oGun_Parent` and is responsible for handling the shooting mechanics of a flame thrower weapon in the game. It checks if the player exists, if the player has the weapon equipped, and if there are bullets in the magazine before shooting. When the conditions are met, it creates a flame thrower ammo instance at the player's position, sets its properties, and applies knockback to the player.

**Events**
- **Mouse_50**: Checks if the conditions for shooting are met and, if so, creates a flame thrower ammo instance, sets its properties, and applies knockback to the player.
- **Mouse_56**: Destroys all instances of `oFlameThrowerAmmo` and resets the firerate check.

**Dependencies**
- **Variables**: `firerate_check`, `firerate`, `magazine_check`, `damage`, `bullet_speed`, `bullet_type`, `shooting_effect`, `pause`, `knockback`
- **Global**: `pause`
- **Objects**: `oFlameThrowerAmmo`, `oPlayer`
- **Layers**: "Instances"

**Potential issues**
- None found.

### oFlameThrowerAmmo
- parent: oBullet_Parent | sprite: none
- Events: Create (1 lines), Step (6 lines), Begin Step (12 lines), End Step (10 lines), Collision with oEnemyParent (2 lines)
- Uses: objects: oBullet_Parent, oEnemyParent, oPlayer
- Used by: objects: oFlameThrower

**AI summary**
**Summary**
The `oFlameThrowerAmmo` object is a bullet-like entity used by the `oFlameThrower` object. It moves towards the player's mouse position relative to the player's position, rotates to face the mouse direction, and disappears after a certain number of frames or if it leaves the room boundaries.

**Events**
- **Create_0**: Initializes a variable `frames_until_it_disapears` to 61.
- **Step_0**: Decrements `frames_until_it_disapears` and destroys the instance if it reaches 0.
- **Step_1**: Updates the image angle to face the mouse direction relative to the player's position and destroys the instance if it leaves the room boundaries.
- **Step_2**: Moves the instance towards the player's mouse position relative to the player's position.
- **Collision_oEnemyParent**: Currently empty, no functionality defined.

**Dependencies**
- **Variables/Objects**: Reads `oPlayer.x`, `oPlayer.y`, `mouse_x`, `mouse_y`, `room_width`, `room_height`, and `pause`.
- **Globals**: Reads `pause`.
- **Resources**: None created or referenced.

**Potential issues**
- None found.

### oFlameThrowerAmmoEnemy
- parent: oBullet_Parent | sprite: none
- Events: Create (3 lines), Step (11 lines), Begin Step (15 lines), End Step (4 lines), Collision with oEnemyParent (2 lines)
- Uses: objects: oBullet_Parent, oEnemyParent, oPlayer
- Used by: objects: oEnemyRangedFlamethrower

**AI summary**
**Summary**
The `oFlameThrowerAmmoEnemy` object is a bullet-like entity used by enemy ranged flamethrowers. It moves towards the player, has a limited lifespan, and checks for collisions with enemy parent objects. It does not have a sprite and is not solid.

**Events**
- **Create_0**: Initializes the bullet's lifespan and angle.
- **Step_0**: Decreases the lifespan and destroys the instance if it reaches zero.
- **Step_1**: Updates the bullet's angle towards the player, destroys itself if the emitter or player is not present, and checks if it is within the room bounds.
- **Step_2**: Moves the bullet according to its speed and angle.
- **Collision_oEnemyParent**: Currently empty, no functionality defined.

**Dependencies**
- **Variables**: `frames_until_it_disapears`, `_angle`, `emmiter`.
- **Globals**: `oPlayer`, `room_width`, `room_height`.
- **Functions**: `instance_destroy()`, `point_direction()`, `lengthdir_x()`, `lengthdir_y()`.

**Potential issues**
- None found.

### oGame
- parent: none | sprite: sWall | flags: persistent, invisible
- Events: Create (21 lines), Clean Up (3 lines), Step (0 lines), KeyPress (key code 27) (11 lines), KeyPress (key code 80) (1 lines), KeyPress (key code 81) (8 lines), KeyPress (key code 84) (1 lines), KeyPress (key code 86) (1 lines), KeyPress (key code 90) (1 lines), Room Start (29 lines)
- Uses: objects: oCamera, oEnemyParent, oLevelGen, oMap, oMenuPause, oPlayer; rooms: Test, rMenu; scripts: init; sprites: sCursor
- Used by: none
- Placed in rooms: Level (x1), Test (x1)

**AI summary**
**Summary**
The `oGame` object is a persistent object that initializes global variables, sets up the game environment, and handles various key presses for game controls and debugging. It manages the game's state, including pausing, restarting, and toggling debug mode.

**Events**
- **Create_0**: Initializes global variables, executes the `init` script, sets the cursor sprite, and makes the game fullscreen.
- **CleanUp_0**: Cleans up the particle system by destroying it.
- **KeyPress_27**: Toggles the pause menu by creating or destroying the `oMenuPause` instance.
- **KeyPress_80**: Destroys all instances of `oEnemyParent`.
- **KeyPress_81**: Toggles debug mode by enabling or disabling the debug overlay.
- **KeyPress_84**: Ends the game (commented out).
- **KeyPress_86**: Restarts the current room.
- **KeyPress_90**: Shakes the camera (commented out).
- **Other_4**: Handles entering the main menu, sets up a grid, creates necessary instances, and initializes particle systems.

**Dependencies**
- **Global Variables**: `grid`, `debug`, `pause`, `money`, `num_enemies`.
- **Scripts**: `init`.
- **Sprites**: `sCursor`.
- **Rooms**: `Test`, `rMenu`.
- **Objects**: `oCamera`, `oEnemyParent`, `oLevelGen`, `oMap`, `oMenuPause`, `oPlayer`.

**Potential issues**
- None found.

### oGasArea
- parent: oBullet_Parent | sprite: sGas_Area | flags: invisible
- Events: Create (2 lines), Step (14 lines)
- Uses: objects: oBullet_Parent
- Used by: objects: oEnemyParentGasser, oExplosiveBarril

**AI summary**
**Summary**
The `oGasArea` object is a child of `oBullet_Parent` and represents a gas area in the game. It creates a gas effect around its position and disappears after a certain number of frames.

**Events**
- **Create_0**: Initializes a variable `frames_until_it_disapears` to 300.
- **Step_0**: Creates particles around the object's position and decrements `frames_until_it_disapears`. If `frames_until_it_disapears` reaches 0, the object is destroyed.

**Dependencies**
- **Variables**: `frames_until_it_disapears`
- **Globals**: `global.partSystem`, `global.ptGas`
- **Resources**: Creates particles using `part_particles_create`

**Potential issues**
- None found.

### oGun_Parent
- parent: none | sprite: none
- Events: Create (9 lines), Step (33 lines), KeyPress (key code 82) (5 lines), Mouse 50 (24 lines)
- Uses: objects: oPlayer; scripts: shoot_bullet
- Used by: objects: oFlameThrower, oHandGun, oMachineGun, oRocketLauncher, oShotGun, oSniperGun
- Placed in rooms: Test (x1)

**AI summary**
**Summary**
`oGun_Parent` is a parent object for various types of guns in the game. It manages the gun's state (normal or reloading), tracks the number of bullets in the magazine, and handles shooting and reloading actions. It is used by different child objects representing specific types of guns.

**Events**
- **Create_0**: Initializes variables to manage the gun's firerate, magazine capacity, reloading frames, total bullets, and state.
- **Step_0**: Updates the firerate counter, manages the reloading process, and checks if the gun is ready to shoot.
- **KeyPress_82**: Initiates the reloading process if the player presses the 'R' key and conditions are met.
- **Mouse_50**: Handles shooting when the player clicks the mouse, calculates the shooting direction, and calls the `shoot_bullet` script.

**Dependencies**
- **Variables provided by child objects**: `firerate`, `magazine`, `reloading_frames`, `bullets`, `damage`, `bullet_speed`, `bullet_type`, `shooting_effect`, `knockback`.
- **Global variables read**: `pause`.
- **Global variables written**: None.
- **Scripts called**: `shoot_bullet`.
- **Objects interacted with**: `oPlayer`.

**Potential issues**
- None found.

### oHandGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oHandGunBullet
- parent: oBullet_Parent | sprite: sBullet
- Events: Collision with oWall (1 lines), Collision with oZombie (2 lines)
- Uses: objects: oBullet_Parent, oWall, oZombie
- Used by: objects: oZombie

**AI summary**
**Summary**
The `oHandGunBullet` object is a child of `oBullet_Parent` and represents a bullet fired from a handgun. It uses the sprite `sBullet` and is not solid or persistent. The bullet is destroyed upon colliding with either a `oWall` or a `oZombie`.

**Events**
- **Collision with oWall**: The bullet is destroyed.
- **Collision with oZombie**: The bullet is destroyed.

**Dependencies**
- **Objects**: `oBullet_Parent`, `oWall`, `oZombie`
- **Sprite**: `sBullet`

**Potential issues**
None found.

### oLantern_NOT_USED
- parent: none | sprite: none
- Events: Create (2 lines), Step (9 lines), Draw (1 lines), Draw End (33 lines)
- Uses: objects: oPlayer
- Used by: none
- Placed in rooms: Test (x1)

**AI summary**
**Summary**
The `oLantern_NOT_USED` object is designed to follow the player and draw a black triangle fan shape that represents a field of view (FOV) cone. The FOV cone's angle is dynamically adjusted based on the distance between the player and the mouse cursor.

**Events**
- **Create_0**: Initializes the FOV angle (`fovarc`) to 120 and sets `fov_offset` to 0.
- **Step_0**: Updates the object's position to match the player's position. If the player does not exist, the object is destroyed. If the game is not paused, it calculates the angle towards the mouse cursor.
- **Draw_73**: Draws a black triangle fan behind the player, representing the FOV cone. The FOV angle is adjusted based on the distance between the player and the mouse cursor.

**Dependencies**
- **Variables**: 
  - `pause`: A global variable that determines whether the game is paused.
  - `mouse_x`, `mouse_y`: Global variables representing the mouse cursor's position.
- **Objects**: 
  - `oPlayer`: The player object whose position is followed and used to calculate the FOV cone.

**Potential issues**
- **Unnecessary instance check**: The `instance_exists(oPlayer)` check is repeated multiple times in the `Draw_73` event, which can be optimized by checking it once at the beginning.
- **Magic numbers**: The use of magic numbers like `120`, `0.9`, `720`, `20`, and `10` makes the code less readable and maintainable. These should be defined as constants with descriptive names.
- **Inefficient FOV calculation**: The loop that calculates the vertices for the FOV cone runs up to 720 times, which can be computationally expensive. This should be optimized for better performance.
- **Unused object**: The object is marked as `NOT_USED`, indicating it is not currently in use. This should be addressed or removed if it is not needed.

### oLevelGen
- parent: none | sprite: sWall | flags: invisible
- Events: Create (139 lines)
- Uses: objects: oAmmoBox, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyRangedNormal, oEnemyRangedRocketLauncher, oExplosiveBarril, oPassWay, oPlayable, oPlayer, oVoidWall, oWall, oZombie, oZombieSecond; scripts: chance
- Used by: objects: oGame

**AI summary**
**Summary**
The `oLevelGen` object is responsible for generating the level layout, spawning enemies, items, and the exit. It creates walls, randomly places enemies and items, and ensures the exit is placed correctly. It also handles the removal of unnecessary walls and cleans up instances.

**Events**
- **Create**: Generates the level by creating walls, spawning enemies, items, and the exit, and then cleaning up unnecessary walls.

**Dependencies**
- **Variables/Scripts**: 
  - `createWall`: A boolean indicating whether to create walls.
  - `wall_chance`: A variable used in the `chance` function to determine wall placement.
  - `enemy_chance`: A variable used in the `chance` function to determine enemy spawning.
  - `pickable_chance`: A variable used in the `chance` function to determine item spawning.
  - `testing`: A boolean indicating whether the game is in testing mode.
  - `chance`: A script used to determine random events based on a given probability.
- **Objects**: 
  - `oWall`, `oPlayable`, `oVoidWall`, `oPassWay`, `oPlayer`, `oAmmoBox`, `oExplosiveBarril`, `oZombie`, `oZombieSecond`, `oEnemyRangedNormal`, `oEnemyRangedRocketLauncher`, `oEnemyParentConjurer`, `oEnemyParentGasser`.
- **Layers**: 
  - `"Walls_physical"`
  - `"Enemies"`
  - `"Instances"`

**Potential issues**
- **Line 44**: The `instance_place` function is used to check for an instance of `oWall` at the current position, but the instance is immediately destroyed. This is unnecessary and can be optimized.
- **Line 66**: The `instance_destroy` function is called on `oPlayable`, which is not an instance but an object. This will cause an error.
- **Line 104**: The `instance_number` function is used to check the number of `oEnemyParent` instances, but this variable is not used anywhere in the code. It seems to be redundant.
- **Line 114**: The `instance_destroy` function is called on `oPlayable`, which is not an instance but an object. This will cause an error.

### oLight_Area
- parent: obj_light | sprite: none | flags: invisible
- Events: Step (0 lines)
- Uses: objects: obj_light
- Used by: objects: oAmmoBox

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oLight_Passway_Area
- parent: obj_light | sprite: none
- Events: Step (2 lines)
- Uses: objects: obj_light
- Used by: objects: oPassWay

**AI summary**
**Summary**
The `oLight_Passway_Area` object is a child of `obj_light` and is used by the `oPassWay` object. It currently has no sprite assigned and is not marked as solid or persistent. The object's purpose and functionality are not yet defined as the code in the `Step_0` event is empty.

**Events**
- **Step_0**: The code is currently empty, so it does nothing.

**Dependencies**
None found.

**Potential issues**
- None found.

### oMachineGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oMap
- parent: none | sprite: none
- Events: Create (45 lines), KeyPress (key code 77) (18 lines), Draw GUI (71 lines)
- Uses: objects: oAmmoBox, oBullet_Parent, oEnemyParent, oPassWay, oPlayer, oWall; sprites: sOutline_circle
- Used by: objects: oGame

**AI summary**
**Summary**
The `oMap` object is a GUI element that displays a mini-map of the game world. It shows the player's position, enemy locations, bullets, ammo boxes, and passageways. The map can be zoomed in and out using the 'M' key.

**Events**
- **Create_0**: Initializes the map's position, scale, and colors. It also sets up a 2D array to track wall positions.
- **KeyPress_77**: Toggles the zoom level of the map when the 'M' key is pressed.
- **Draw_64**: Draws the map, including walls and instances of various objects, relative to the player's position.

**Dependencies**
- **Variables**: `pause`, `room_width`, `room_height`, `oPlayer.x`, `oPlayer.y`, `oPlayer.bbox_left`, `oPlayer.bbox_top`, `oPlayer.bbox_right`, `oPlayer.bbox_bottom`.
- **Globals**: None found.
- **Resources**: `sOutline_circle` sprite, `c_dkgray`, `c_maroon`, `c_yellow`, `c_white`, `c_blue`, `c_green`, `c_gray`.

**Potential issues**
- **Undefined variable `draw_walls`**: The variable `draw_walls` is used in the `Draw_64` event but is never defined or initialized.
- **Undefined variable `draw_instances`**: The variable `draw_instances` is used in the `Draw_64` event but is never defined or initialized.
- **Potential out-of-bounds access**: The `wall_draw` array is accessed using indices calculated from `room_width` and `room_height`, but it is not initialized or resized before use.
- **Heavy work in Draw event**: The `Draw_64` event performs a significant amount of work, including nested loops and distance calculations, which could impact performance, especially in larger rooms.

### oMenuDeath
- parent: none | sprite: none
- Events: Create (47 lines), Destroy (0 lines), Step (32 lines), Draw (6 lines), Draw GUI (28 lines)
- Uses: rooms: rMenu; scripts: TextFunctions; sprites: sArrow
- Used by: objects: oPlayer

**AI summary**
**Summary**
The `oMenuDeath` object is a menu screen that appears when the player dies in the game. It provides options to restart the level, access the configuration menu, return to the main menu, or exit the game. The menu includes a title, selectable items with animations, and sound effects for navigation and selection.

**Events**
- **Create_0**: Initializes variables for the menu items, positions, colors, fonts, sounds, and control keys.
- **Step_0**: Handles user input to navigate through the menu items and select an option, playing corresponding sounds.
- **Draw_0**: Draws a grayed-out background to dim the screen.
- **Draw_64**: Renders the menu title, items, and animated arrows.

**Dependencies**
- **Variables**: `view_wport`, `view_yport`, `room_width`, `room_height`.
- **Scripts**: `TextFunctions` (used in `text_with_shaking_shadow`).
- **Sprites**: `sArrow`.
- **Rooms**: `rMenu`.
- **Sounds**: `sndSelect`, `sndConfirmation`.
- **Fonts**: `fMenu60`, `fDecrepit30`.
- **Globals**: None explicitly mentioned, but relies on global variables for view and room properties.

**Potential issues**
- None found.

### oMenuMain
- parent: none | sprite: none
- Events: Create (46 lines), Destroy (0 lines), Step (32 lines), Draw (28 lines)
- Uses: rooms: Level; scripts: TextFunctions; sprites: sArrow
- Used by: none
- Placed in rooms: rMenu (x1)

**AI summary**
**Summary**
The `oMenuMain` object is a menu controller for the main menu of the game. It handles the creation, updating, and drawing of the menu items, including navigation with keyboard inputs and visual effects like animated arrows and text shadows.

**Events**
- **Create_0**: Initializes variables, creates a list of menu items, and sets up menu and text properties.
- **Step_0**: Handles menu navigation using keyboard inputs and plays sounds when the selection changes or is confirmed.
- **Draw_0**: Draws the menu title, items, and animated arrows.

**Dependencies**
- **Scripts**: `TextFunctions` (used for `text_with_shaking_shadow` function)
- **Sprites**: `sArrow` (used for the menu arrow)
- **Rooms**: `Level` (used for transitioning to the game level)
- **Sounds**: `sndSelect`, `sndConfirmation` (used for menu sounds)
- **Fonts**: `fMenu60`, `fDecrepit30` (used for menu text and title)

**Potential issues**
- None found.

### oMenuPause
- parent: none | sprite: none
- Events: Create (49 lines), Destroy (1 lines), Step (37 lines), Draw GUI (28 lines), Draw End (5 lines)
- Uses: objects: o_part_emitter_wiggle; rooms: rMenu; scripts: TextFunctions; sprites: sArrow
- Used by: objects: oGame, oPlayer

**AI summary**
**Summary**
The `oMenuPause` object is a pause menu for a game. It handles the creation, destruction, and updating of the menu, including handling user input for navigation and selection, as well as drawing the menu items and background.

**Events**
- **Create_0**: Initializes variables, creates a particle emitter, and sets up the menu list and selected item.
- **Destroy_0**: Destroys the particle emitter instance.
- **Step_0**: Handles menu navigation with keyboard input and executes actions based on the selected menu item.
- **Draw_64**: Draws the menu title, items, and animated arrow.
- **Draw_73**: Draws a grayed-out background.

**Dependencies**
- **Variables/Scripts**:
  - `view_wport`, `view_yport`: Used to get the viewport dimensions.
  - `instance_create_layer`: Creates a particle emitter instance.
  - `ds_list_create`, `ds_list_add`, `ds_list_size`, `ds_list_index`: Used for managing the menu items list.
  - `audio_play_sound`: Plays sound effects for menu navigation and selection.
  - `room_restart`, `room_goto`, `game_end`: Used for restarting the room, going to a different room, or ending the game.
  - `keyboard_check_pressed`: Checks for keyboard input.
  - `text_with_shaking_shadow`: A custom script for drawing text with a shadow effect.
  - `lengthdir_x`: Calculates the x component of a vector with a given length and direction.
  - `draw_sprite_ext`, `draw_rectangle`: Used for drawing sprites and rectangles.

- **Sprites**:
  - `sArrow`: The sprite used for the menu arrow.

- **Sounds**:
  - `sndSelect`, `sndConfirmation`: Sound effects for menu navigation and selection.

- **Fonts**:
  - `fMenu60`, `fDecrepit30`: Fonts used for the menu title and items.

- **Rooms**:
  - `rMenu`: The room to go to when selecting "Go to Main Menu".

- **Global Variables**:
  - `pause`: Controls the game pause state.

**Potential issues**
None found.

### oPassWay
- parent: none | sprite: sGateWay | flags: invisible
- Events: Create (2 lines), Destroy (1 lines), Step (21 lines), Collision with oPlayer (2 lines)
- Uses: objects: oLight_Passway_Area, oPlayer, oTriangle; sprites: sGateWay
- Used by: objects: oLevelGen, oMap, oTriangle

**AI summary**
**Summary**
The `oPassWay` object represents a gateway in the game. It becomes visible and active when there are no enemies left in the level. When activated, it creates a light effect and a triangle object near the player. If the player collides with the active passway, the room restarts.

**Events**
- **Create_0**: Initializes the `activate` variable to `false` and sets `light` to `noone`.
- **Destroy_0**: Destroys the light instance associated with the passway.
- **Step_0**: Checks if there are no enemies left to activate the passway. If activated, it makes the passway visible, creates a particle effect, and manages the creation and positioning of the triangle and light objects. If not activated, it hides the passway.
- **Collision_oPlayer**: If the passway is activated, it restarts the room.

**Dependencies**
- **Variables**: `num_enemies` (expected to be set elsewhere to track the number of enemies).
- **Globals**: `partSystem`, `ptItemAura` (used for particle effects).
- **Sprites**: `sGateWay` (used as the sprite for the passway).
- **Objects**: `oLight_Passway_Area`, `oPlayer`, `oTriangle` (used for creating instances and collision detection).

**Potential issues**
- None found.

### oPlayable
- parent: none | sprite: fock
- Events: none with code
- Uses: none
- Used by: objects: oLevelGen

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oPlayer
- parent: none | sprite: sPlayer
- Events: Create (27 lines), Step (88 lines), Collision with oBullet_Parent (45 lines), Collision with oEnemyParent (45 lines), Collision with oZombie (0 lines), Draw (22 lines)
- Uses: objects: oBullet_Parent, oCamera, oEnemyParent, oHandGun, oMachineGun, oMenuDeath, oMenuPause, oRocketLauncher, oShotGun, oSniperGun, oWall, oZombie; sprites: sPlayer, sPlayer_hurt, sPlayer_shooting
- Used by: objects: oAmmoBox, oCamera, oEnemyNormalBullet, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyParentMelee, oEnemyParentRanged, oEnemyRangedFlamethrower, oExplosiveBarril, oFlameThrower, oFlameThrowerAmmo, oFlameThrowerAmmoEnemy, oGame, oGun_Parent, oLantern_NOT_USED, oLevelGen, oMap, oPassWay, oPlayerLight_Beam, oRocket, oShadows_NOT_USED, oShotGunBullet, oTriangle, oVoidWall, oWall, o_part_rain_moody, obj_light; scripts: weapon_scroll
- Placed in rooms: Test (x1)

**AI summary**
**Summary**
The `oPlayer` object represents the player character in the game. It handles player movement, collision detection with walls and enemies, state management (normal, hurt, shooting), and drawing. It also manages the player's health, weapons, and interactions with the environment.

**Events**
- **Create_0**: Initializes player variables, creates instances of available weapons, and sets initial states.
- **Step_0**: Handles player movement, collision with walls, state transitions, and updates player position.
- **Collision_oBullet_Parent**: Manages player damage from bullets, including health reduction, invincibility, and death.
- **Collision_oEnemyParent**: Manages player damage from enemies, including health reduction, invincibility, and death.
- **Draw_0**: Draws the player sprite based on the current state and facing direction.

**Dependencies**
- **Variables**: `pause`, `godMode`, `global.partSystem`, `global.ptBloodPool`, `global.ptBlood`.
- **Sprites**: `sPlayer`, `sPlayer_hurt`, `sPlayer_shooting`.
- **Objects**: `oWall`, `oBullet_Parent`, `oEnemyParent`, `oMenuPause`, `oMenuDeath`, `oHandGun`, `oMachineGun`, `oSniperGun`, `oShotGun`, `oRocketLauncher`.
- **Scripts**: None directly referenced, but depends on `weapon_scroll` for weapon switching (not shown in provided code).

**Potential issues**
- **State Assignment**: In `Step_0`, `if(state = 2)` and `if(state = 3)` should use `==` for comparison instead of assignment (`=`). This will cause the state to always be set to 2 or 3, respectively, leading to incorrect behavior.
  ```gml
  if(state == 2){ // Hurt
  ```
  ```gml
  if(state == 3){ // Shooting
  ```
- **Uninitialized Variables**: The code assumes `pause` and `godMode` are defined elsewhere, but they are not initialized in the provided code. This could lead to runtime errors if these variables are accessed before being set.
- **Potential Infinite Loop**: In `Step_0`, if `place_meeting(x+h_spd,y,oWall)` is true and `place_meeting(x+sign(h_spd), y, oWall)` is always true, the `while` loop could potentially run indefinitely. This is unlikely with the current logic but worth noting.
- **Unused Code**: The commented-out code for switching weapons and creating a camera instance suggests potential unused or incomplete features. This could lead to confusion or maintenance issues if these features are intended to be used in the future.
  ```gml
  //Switch Weapons ===========================================================================================
  //Now done in oCamera DrawGUI when drawing the weapons on the sidebar
  //weapon_slot = keyboard_get_number()-1; //Choose weapon slot using keyboard numbers

  //if(weapon_slot>-1 && weapon_slot<array_length_1d(weapons)) //Checks if weapon is in inventory and equips it
  //	weapon = weapons[weapon_slot];
  ```

### oPlayerLight_Area
- parent: obj_light | sprite: none | flags: invisible
- Events: none with code
- Uses: objects: obj_light
- Used by: none
- Placed in rooms: Level (x1), LightingTest (x3)

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oPlayerLight_Beam
- parent: obj_light | sprite: none | flags: invisible
- Events: Step (11 lines)
- Uses: objects: oPlayer, obj_light; scripts: lighting_global
- Used by: none
- Placed in rooms: Level (x1)

**AI summary**
**Summary**
The `oPlayerLight_Beam` object is a light beam that follows the player and points towards the mouse position. It is used in the `Level` room and relies on the `oPlayer` object and the `lighting_global` script.

**Events**
- **Step_0**: Updates the light beam's position to follow the player and sets its direction towards the mouse position if the game is not paused.

**Dependencies**
- **Objects**: `oPlayer` (for position and existence check)
- **Scripts**: `lighting_global` (implied by the use of `light[| eLight.X]`, `light[| eLight.Y]`, and `light[| eLight.Direction]`)
- **Globals**: `light` (an array or data structure used to store light properties)
- **Variables**: `eLight.X`, `eLight.Y`, `eLight.Direction` (expected to be defined in `lighting_global` or another script)
- **Built-in Variables**: `mouse_x`, `mouse_y`, `pause`

**Potential issues**
- None found.

### oPointTarget
- parent: none | sprite: none
- Events: Step (3 lines)
- Uses: scripts: UsefulScripts
- Used by: objects: o_part_emiter_delta
- Placed in rooms: Room1 (x1)

**AI summary**
**Summary**
The `oPointTarget` object is a non-solid, non-persistent object placed in `Room1`. It uses the `Wave` function to oscillate its x-position between 64 and `room_width - 64` with a frequency of 10.0.

**Events**
- **Step_0**: Updates the x-position of the object using a wave function.

**Dependencies**
- **Scripts**: `UsefulScripts`
- **Globals**: None found.
- **Instance Variables**: None found.
- **Resources**: None created or referenced.

**Potential issues**
- **Wave function**: The `Wave` function is used, but its implementation is not provided. Ensure that `Wave` is defined elsewhere in the project or is a built-in function. If it's a custom function, verify its parameters and behavior.
- **Performance**: The object updates its position every step, which is generally fine for simple oscillation but should be monitored if additional logic is added later.

### oResize_NOT_USED
- parent: none | sprite: none
- Events: Create (4 lines), Room Start (4 lines)
- Uses: none
- Used by: none

**AI summary**
**Summary**
The `oResize_NOT_USED` object is designed to adjust the room dimensions and resize the application surface based on the display resolution. However, since it is not used by any other objects or scripts, its functionality is not integrated into the game.

**Events**
- **Create_0**: Initializes global variables `room_w` and `room_h` by calculating the ratio of display width to room width and display height to room height.
- **Other_4**: Resizes the room dimensions to match the display dimensions and resizes the application surface accordingly.

**Dependencies**
- **Global Variables**: Reads and writes `room_w` and `room_h`.
- **Functions**: Uses `display_get_width()`, `display_get_height()`, `room_width`, `room_height`, and `surface_resize()`.
- **Resources**: Interacts with `application_surface`.

**Potential issues**
- **Unused Object**: The object is not referenced or used by any other part of the game, making its functionality redundant.
- **Global Variable Naming**: The global variables `room_w` and `room_h` are not descriptive of their purpose, which could lead to confusion.
- **Hardcoded Surface**: The code assumes the existence of `application_surface`, which should be checked to ensure it is valid before attempting to resize it.

### oRocket
- parent: oBullet_Parent | sprite: sRocket
- Events: Step (5 lines), Collision with oEnemyParent (9 lines), Collision with oPlayer (4 lines), Collision with oWall (3 lines)
- Uses: objects: oBullet_Parent, oEnemyParent, oExplosion, oPlayer, oWall; scripts: shoot_bullet
- Used by: none

**AI summary**
**Summary**
The `oRocket` object is a child of `oBullet_Parent` and represents a rocket in the game. It has a sprite `sRocket` and is not solid or persistent. The rocket can collide with enemies, the player, and walls, and it can shoot bullets upon collision. It also creates a particle effect when not paused.

**Events**
- **Step_0**: Creates a particle effect at the rocket's position if the game is not paused.
- **Collision_oEnemyParent**: Inherits the parent event and shoots a bullet if the rocket was not fired by an enemy.
- **Collision_oPlayer**: Shoots a bullet if the rocket was fired by an enemy.
- **Collision_oWall**: Shoots a bullet and destroys the rocket instance.

**Dependencies**
- **Objects**: `oBullet_Parent`, `oEnemyParent`, `oExplosion`, `oPlayer`, `oWall`
- **Scripts**: `shoot_bullet`
- **Globals**: `pause`, `partSystem`, `destroy_effect`, `bullet_from_enemy`, `global.ptEmpty`

**Potential issues**
- None found.

### oRocketLauncher
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oShadows_NOT_USED
- parent: none | sprite: none
- Events: Create (3 lines), Step (12 lines), Draw (74 lines)
- Uses: objects: oPlayer, oWall
- Used by: none
- Placed in rooms: Test (x1)

**AI summary**
**Summary**
The `oShadows_NOT_USED` object is intended to create and draw shadows that follow the player. It creates a surface to draw the shadow and updates its position based on the player's position. The object also attempts to remove shadows behind walls by drawing black triangles over them.

**Events**
- **Create_0**: Initializes a surface for drawing the shadow and sets initial variables for shadow size and direction.
- **Step_0**: Updates the object's position to match the player's position. If the player does not exist, the object is destroyed. It also updates the image angle to face the mouse.
- **Draw_0**: Draws the shadow surface and attempts to remove shadows behind walls by drawing black triangles over them.

**Dependencies**
- **Variables/Objects**: 
  - `oPlayer`: The player object whose position is followed.
  - `oWall`: The wall object used to determine where shadows should be removed.
  - `room_width`, `room_height`: Global variables representing the room dimensions.
- **Surfaces**: 
  - `fovsurface`: A surface created for drawing the shadow.
- **Instance Variables**: 
  - `x`, `y`: Position of the object.
  - `shadow_size`: Size of the shadow.
  - `lookdir`: Direction the shadow is facing.

**Potential issues**
- **Unfreed Surface**: The surface `fovsurface` is created but never freed, which can lead to memory leaks.
- **Unused Code**: The commented-out code in the `Draw_0` event suggests unused functionality that may need to be addressed.
- **Potential Division by Zero**: The calculation of `lookdir` in the `Create_0` event could potentially cause a division by zero if `room_width` or `room_height` is zero.
- **Redundant Direction Calculation**: The direction calculation is repeated multiple times within the `Draw_0` event, which could be optimized.
- **Unnecessary Alpha Setting**: The alpha is set to 1 multiple times in the `Draw_0` event, which is redundant and unnecessary.

### oShotGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oShotGunBullet
- parent: oBullet_Parent | sprite: none
- Events: Begin Step (37 lines), Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oPlayer, oShotGunBulletPellet, oWall
- Used by: none

**AI summary**
**Summary**
The `oShotGunBullet` object is a child of `oBullet_Parent` and is responsible for spawning multiple pellets (`oShotGunBulletPellet`) when it is created. Each pellet is given a random angle within a specified range, a speed, and a portion of the total damage. The main bullet instance destroys itself after spawning all pellets. It also checks if it is out of the room bounds and destroys itself if so.

**Events**
- **Step_1**: Spawns pellets, sets their properties, and destroys itself.
- **Collision_oWall**: Destroys itself upon colliding with a wall.

**Dependencies**
- **Variables**: `pause`, `randomRange`, `numberPellets`, `damage`, `mouse_x`, `mouse_y`
- **Objects**: `oPlayer`, `oShotGunBulletPellet`, `oWall`
- **Layers**: "Player"
- **Global**: `pause`

**Potential issues**
- None found.

### oShotGunBulletPellet
- parent: oBullet_Parent | sprite: sShotGunBulletPellet
- Events: Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oWall
- Used by: objects: oShotGunBullet

**AI summary**
**Summary**
The `oShotGunBulletPellet` object is a child of `oBullet_Parent` and represents a bullet pellet fired from a shotgun. It uses the sprite `sShotGunBulletPellet` and is not solid or persistent. When it collides with an `oWall` object, it destroys itself.

**Events**
- **Collision with oWall**: Destroys the instance of `oShotGunBulletPellet`.

**Dependencies**
- **Objects**: `oBullet_Parent`, `oWall`
- **Sprite**: `sShotGunBulletPellet`

**Potential issues**
None found.

### oSniperBullet
- parent: oBullet_Parent | sprite: sBullet
- Events: Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oWall
- Used by: none

**AI summary**
**Summary**
The `oSniperBullet` object is a child of `oBullet_Parent` and uses the sprite `sBullet`. It is not solid and not persistent. The object is designed to handle collisions with `oWall` by destroying itself.

**Events**
- **Collision with oWall**: Destroys the instance of `oSniperBullet`.

**Dependencies**
- **Objects**: `oBullet_Parent`, `oWall`
- **Sprites**: `sBullet`
- **Variables**: None explicitly mentioned, but inherits variables from `oBullet_Parent`.
- **Globals**: None read or written.
- **Resources**: None created or managed.

**Potential issues**
None found.

### oSniperGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### oSteadyDeltaTime
- parent: none | sprite: none | flags: persistent
- Events: Create (37 lines), Begin Step (37 lines)
- Uses: none
- Used by: scripts: AdvancedParticleSystem, AdvancedParticleSystem_1, AdvancedParticleSystem_2

**AI summary**
**Summary**
The `oSteadyDeltaTime` object manages delta time for the game, ensuring smooth and consistent timing for game logic and particle systems. It calculates both a steady and an unsteady delta time, and uses a continuous timer to manage particle creation.

**Events**
- **Create_0**: Initializes global variables for delta time management, sets up configuration parameters like `minFPS` and `scale`, and initializes internal variables.
- **Step_1**: Updates the delta time values, prevents sporadic behavior by capping the delta time, and manages a continuous timer for particle creation.

**Dependencies**
- **Globals Read/Written**:
  - `global.dt_steady`: Stores the managed delta time.
  - `global.dt_unsteady`: Stores the raw delta time.
  - `global.continuousDeltaTimer`: A continuous timer used for particle creation.
- **Configuration Variables**:
  - `minFPS`: The minimum frame rate before delta time is capped.
  - `scale`: A scale factor for delta time, affecting the speed of game logic.

**Potential issues**
None found.

### oSteadyDeltaTime_1
- parent: none | sprite: none | flags: persistent
- Events: Create (37 lines), Begin Step (37 lines)
- Uses: none
- Used by: none

**AI summary**
**Summary**
The `oSteadyDeltaTime_1` object is designed to manage and smooth out the delta time in a game, ensuring consistent timing across different frame rates. It calculates both a steady and an unsteady delta time, which can be used for various timing-related tasks in the game.

**Events**
- **Create_0**: Initializes global variables for delta time management, sets up configuration parameters like `minFPS` and `scale`, and initializes internal variables for delta time calculation.
- **Step_1**: Updates the delta time values, smooths out any spikes in delta time to prevent sporadic behavior, and maintains a continuous timer for particle creation or other timing-dependent tasks.

**Dependencies**
- **Globals Read/Written**:
  - `global.dt_steady`: Stores the managed delta time.
  - `global.dt_unsteady`: Stores the raw delta time.
  - `global.continuousDeltaTimer`: A continuous timer used for particle creation or other timing tasks.

- **Configuration Parameters**:
  - `minFPS`: The lowest required frame rate before delta time will lag behind step updates.
  - `scale`: A scale factor to multiply with delta time for global slow/fast motion effects.

**Potential issues**
- None found.

### oSteadyDeltaTime_2
- parent: none | sprite: none | flags: persistent
- Events: Create (37 lines), Begin Step (37 lines)
- Uses: none
- Used by: none

**AI summary**
**Summary**
The `oSteadyDeltaTime_2` object is designed to manage and smooth out the delta time in a game, ensuring consistent timing across frames. It calculates both a steady and an unsteady delta time, and uses a continuous timer for particle effects.

**Events**
- **Create_0**: Initializes global variables for delta time management, sets up configuration parameters like `minFPS` and `scale`, and initializes internal delta time tracking.
- **Step_1**: Updates the delta time values, smooths out any spikes in delta time, and manages a continuous timer for particle effects.

**Dependencies**
- **Globals Read/Written**:
  - `global.dt_steady`: Stores the managed delta time.
  - `global.dt_unsteady`: Stores the raw delta time.
  - `global.continuousDeltaTimer`: A continuous timer used for particle effects.

- **Configuration Variables**:
  - `minFPS`: The minimum frame rate before delta time correction is applied.
  - `scale`: A scale factor to adjust the speed of the game.

**Potential issues**
- None found.

### oTriangle
- parent: none | sprite: sTriangle
- Events: Step (7 lines)
- Uses: objects: oPassWay, oPlayer
- Used by: objects: oPassWay

**AI summary**
**Summary**
The `oTriangle` object is a non-solid, non-persistent object with the sprite `sTriangle`. It is used by the `oPassWay` object. When `oPassWay.activate` is true and `oPlayer` exists, `oTriangle` follows `oPlayer`, aligning its image angle to point towards `oPassWay`.

**Events**
- **Step_0**: When the object steps, it checks if `oPassWay.activate` is true and if `oPlayer` exists. If both conditions are met, it sets its position to `oPlayer`'s position and adjusts its image angle to point towards `oPassWay`.

**Dependencies**
- **Variables**: Reads `oPassWay.activate`, `oPlayer.x`, `oPlayer.y`, `oPassWay.x`, `oPassWay.y`.
- **Globals**: None found.
- **Resources**: None found.

**Potential issues**
- None found.

### oVoidWall
- parent: none | sprite: oBlack_64
- Events: Create (4 lines), Alarm 0 (4 lines), Step (0 lines)
- Uses: objects: oPlayer
- Used by: objects: oLevelGen
- Placed in rooms: LightingTest (x5)

**AI summary**
**Summary**
The `oVoidWall` object is a non-solid, non-persistent object with a black sprite. It is placed in the `LightingTest` room. The object deactivates itself if the player is more than 500 pixels away. It uses the `oPlayer` object and is used by the `oLevelGen` object.

**Events**
- **Create_0**: Sets an alarm for 5 steps. Checks if the player exists and is more than 500 pixels away; if so, deactivates the object.
- **Alarm_0**: Checks if the player exists and is more than 500 pixels away; if so, deactivates the object. Resets the alarm for 5 steps.

**Dependencies**
- **Objects**: `oPlayer`, `oLevelGen`
- **Global Variables**: None found
- **Instance Variables**: None found
- **Resources**: None found

**Potential issues**
- None found.

### oWall
- parent: obj_shadow_caster | sprite: sBrickWall | mask: sWall
- Events: Create (11 lines), Alarm 0 (4 lines), Step (0 lines)
- Uses: objects: oPlayer, obj_shadow_caster; scripts: polygon_from_instance
- Used by: objects: oEnemyNormalBullet, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyParentMelee, oEnemyParentRanged, oEnemyRangedFlamethrower, oHandGunBullet, oLevelGen, oMap, oPlayer, oRocket, oShadows_NOT_USED, oShotGunBullet, oShotGunBulletPellet, oSniperBullet, oZombie
- Placed in rooms: Test (x11)

**AI summary**
**Summary**
`oWall` is an object that represents a brick wall in the game. It inherits from `obj_shadow_caster` and uses the sprite `sBrickWall`. The object is not solid and is not persistent. It is placed in the `Test` room and is used by various enemy and player-related objects. The object creates a polygon representation of itself and has an alarm event that deactivates the instance if the player is too far away.

**Events**
- **Create_0**: Initializes bounding box variables and calls the inherited create event. Sets an alarm to trigger every 5 steps.
- **Alarm_0**: Checks if the player exists and if the distance to the player is greater than 500. If so, it deactivates the instance. Resets the alarm to trigger again in 5 steps.

**Dependencies**
- **Variables/Scripts**: Reads `bbox_left`, `bbox_right`, `bbox_top`, `bbox_bottom` from the instance. Uses the `polygon_from_instance` script to create a polygon representation of the instance.
- **Objects**: References `oPlayer` to check its distance.
- **Globals**: None found.
- **Resources**: Creates a polygon resource.

**Potential issues**
- None found.

### oZombie
- parent: oEnemyParentMelee | sprite: sZombie
- Events: Collision with oBullet_Parent (55 lines), Collision with oHandGunBullet (51 lines), Collision with oZombie (8 lines)
- Uses: objects: oBullet_Parent, oCamera, oDamageNumber, oEnemyParentMelee, oHandGunBullet, oWall; scripts: chance
- Used by: objects: oEnemyParentConjurer, oEnemyParentMelee, oHandGunBullet, oLevelGen, oPlayer
- Placed in rooms: Test (x22)

**AI summary**
**Summary**
`oZombie` is a melee enemy object that takes damage from bullets and handgun bullets, displays damage numbers, and dies when its health reaches zero. It also pushes back when hit and shakes the camera upon death.

**Events**
- **Collision with oBullet_Parent**: Calculates damage, creates a damage number instance, checks for death, applies pushback, and creates blood particles.
- **Collision with oHandGunBullet**: Similar to the bullet collision, but with additional handling for handgun-specific effects like showing damage and setting a random angle for the damage text.
- **Collision with oZombie**: Pushes the zombie in the opposite direction of the colliding zombie.

**Dependencies**
- **Variables/Objects/Scripts**:
  - `pause`: Expected to be defined elsewhere to control game state.
  - `hp`: Health variable of the zombie.
  - `damage`: Damage variable of the bullet or handgun bullet.
  - `oDamageNumber`: Object used to display damage numbers.
  - `oCamera`: Object used to shake the camera upon death.
  - `oWall`: Object used to check for walls during pushback.
  - `chance`: Script used to determine if a critical hit occurs.
  - `global.partSystem`, `global.ptBloodPool`, `global.ptBlood`: Global variables or constants used for particle effects.

- **Globals**:
  - `global.partSystem`: Particle system used for creating blood particles.
  - `global.ptBloodPool`, `global.ptBlood`: Particle types for blood effects.

**Potential issues**
- None found.

### oZombieSecond
- parent: oEnemyParentMelee | sprite: sZombie_second
- Events: none with code
- Uses: objects: oEnemyParentMelee
- Used by: objects: oLevelGen

**AI summary**
**Summary**
No code in this resource.

**Potential issues**
None found

### o_old_part
- parent: none | sprite: none
- Events: Create (13 lines), Clean Up (4 lines), Step (1 lines), Draw GUI (2 lines)
- Uses: sprites: s_pixel
- Used by: none
- Placed in rooms: Room1 (x1)

**AI summary**
**Summary**
The `o_old_part` object is responsible for creating and managing a particle system. It initializes a particle system with a rectangular emitter and a specific set of particle properties, emits particles in each step, and draws the count of active particles on the screen. The object is placed in `Room1` and uses the sprite `s_pixel`.

**Events**
- **Create_0**: Initializes a particle system with a rectangular emitter and sets up particle properties such as gravity, life, size, orientation, sprite, speed, and direction.
- **CleanUp_0**: Destroys the particle type, emitter, and system to clean up resources.
- **Step_0**: Emits a burst of particles in each step.
- **Draw_64**: Draws the count of active particles on the screen.

**Dependencies**
- **Sprites**: `s_pixel`
- **Global Variables**: None found
- **Instance Variables**: `part_sys`, `part_emit`, `part`
- **Resources Created**: Particle system, particle emitter, particle type

**Potential issues**
- None found.

### o_part_emiter
- parent: none | sprite: none
- Events: Create (14 lines), Clean Up (2 lines), Step (6 lines), Draw (1 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room1 (x1)

**AI summary**
**Summary**
The `o_part_emiter` object is a particle emitter used in the game. It creates and manages a particle system with a rectangular emission area and a single particle type. The particle type has specific properties like gravity, life span, size, orientation, image, speed, and direction. The emitter bursts particles every step and optionally moves towards the mouse position.

**Events**
- **Create_0**: Initializes a new particle system and emitter, sets up a particle type with specific properties, and assigns it to the emitter.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system, bursts particles from the emitter, and optionally moves the emitter towards the mouse position.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles in the system.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel`
- **Globals**: `global.particles_debug_mode`
- **Resources**: Creates a particle system (`ps`) and a particle emitter (`pe`).

**Potential issues**
- None found.

### o_part_emiter2
- parent: none | sprite: none
- Events: Create (36 lines), Clean Up (2 lines), Step (4 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room2 (x1)

**AI summary**
**Summary**
The `o_part_emiter2` object is a particle emitter that creates and manages two types of particles using the `AdvancedParticleSystem` script. It is placed in `Room2` and is responsible for emitting particles with specific behaviors and visual properties.

**Events**
- **Create_0**: Initializes a particle system and two emitters with different particle types. The first emitter emits particles that change color based on proximity to the mouse, while the second emitter emits particles with a fixed color.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and emits one particle from each emitter every frame.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles in the system.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel`
- **Globals**: None explicitly read or written
- **Resources**: Creates a particle system (`ps`) and two emitters (`part_emitter1`, `part_emitter2`) with associated particle types (`part_type1`, `part_type2`).

**Potential issues**
- None found.

### o_part_emiter2_delta
- parent: none | sprite: none
- Events: Create (36 lines), Clean Up (2 lines), Step (4 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room2 (x1)

**AI summary**
**Summary**
The `o_part_emiter2_delta` object is a particle emitter that creates and manages two types of particles using the `AdvancedParticleSystem` script. It is placed in `Room2` and is responsible for emitting particles with specific behaviors and visual properties.

**Events**
- **Create_0**: Initializes a particle system, sets up two emitters with different particle types, and configures their properties such as gravity, life, size, image, speed, direction, and color.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and emits bursts of particles from both emitters.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles in the system.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel`
- **Globals**: None explicitly mentioned, but the object uses `mouse_x` and `mouse_y` which are global variables.
- **Resources**: Creates a particle system (`ps`) and two particle emitters (`part_emitter1` and `part_emitter2`).

**Potential issues**
- None found.

### o_part_emiter_delta
- parent: none | sprite: none
- Events: Create (23 lines), Clean Up (2 lines), Step (6 lines), Draw (2 lines), Draw GUI (3 lines)
- Uses: objects: oPointTarget; scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room1 (x1)

**AI summary**
**Summary**
The `o_part_emiter_delta` object is a particle emitter that creates and manages a particle system. It emits particles in a rectangular area around its position, with each particle having specific properties like gravity, life span, size, and speed. The particles change color and sprite when they collide with an `oPointTarget` object.

**Events**
- **Create_0**: Initializes a particle system and emitter, sets up particle properties, and assigns a step function to change particle behavior on collision.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system, emits particles in bursts, and has commented-out code for moving the emitter towards the mouse.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles in the system.

**Dependencies**
- **Objects**: `oPointTarget`
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel`, `s_heart`
- **Globals**: `global.particles_debug_mode`
- **Resources**: Creates an `advanced_part_system` and `advanced_part_emitter`.

**Potential issues**
- None found.

### o_part_emiter_fire
- parent: none | sprite: none
- Events: Create (52 lines), Clean Up (2 lines), Step (7 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFireParticles, sParticleSmoke, s_pixel
- Used by: none
- Placed in rooms: Room4 (x1)

**AI summary**
**Summary**
The `o_part_emiter_fire` object is a particle emitter that creates a fire effect. It uses an advanced particle system to emit smoke, cinder, and fire particles. The emitter is placed in Room4 and is controlled by the player's mouse position.

**Events**
- **Create_0**: Initializes the particle system and sets up the emitter with different particle types for smoke, cinder, and fire.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system, emits fire and cinder particles, and updates the emitter's region to follow the mouse.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles currently emitted.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `sFireParticles`, `sParticleSmoke`, `s_pixel`
- **Globals**: `global.particles_debug_mode`
- **Resources**: Creates an `advanced_part_system` and multiple `advanced_part_type` objects.

**Potential issues**
None found.

### o_part_emiter_fire_delta
- parent: none | sprite: none
- Events: Create (52 lines), Clean Up (2 lines), Step (7 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFireParticles, sParticleSmoke, s_pixel
- Used by: none
- Placed in rooms: Room4 (x1), rMenu (x1)

**AI summary**
**Summary**
The `o_part_emiter_fire_delta` object is a particle emitter that creates and manages a fire effect with smoke and cinders. It is placed in `Room4` and `rMenu` and uses the `AdvancedParticleSystem` script to handle the particle system.

**Events**
- **Create_0**: Initializes the particle system and sets up emitters and particle types for smoke, cinders, and fire.
- **CleanUp_0**: Destroys the particle system.
- **Step_0**: Steps the particle system, emits fire and cinder particles, and adjusts the emitter region to follow the mouse.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Contains commented-out code to draw debug text.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `sFireParticles`, `sParticleSmoke`, `s_pixel`
- **Global Variables**: None explicitly mentioned, but relies on global functions and variables from the `AdvancedParticleSystem` script.
- **Instance Variables**: `ps` (particle system), `em` (emitter), `smoke_part`, `cinder_part`, `fire_part`.

**Potential issues**
- None found.

### o_part_emiter_firework2_delta
- parent: none | sprite: none
- Events: Create (54 lines), Clean Up (2 lines), Step (8 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFirework2, s_pixel
- Used by: none
- Placed in rooms: Room5 (x1)

**AI summary**
**Summary**
The `o_part_emiter_firework2_delta` object is a particle emitter used to create a firework effect. It uses the `AdvancedParticleSystem` script to manage and draw particles. The emitter creates three types of particles: `boom_part`, `cinder_part`, and `fire_part`, each with distinct properties such as lifetime, appearance, and movement.

**Events**
- **Create_0**: Initializes the particle system and sets up the emitter and particle types.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and emits particles. It also allows creating particles at the mouse position when the left mouse button is pressed.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles in the system.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `sFirework2`, `s_pixel`
- **Global Variables**: None found
- **Instance Variables**: `ps` (particle system), `em` (emitter), `boom_part`, `cinder_part`, `fire_part`

**Potential issues**
- None found.

### o_part_emiter_firework_delta
- parent: none | sprite: none
- Events: Create (54 lines), Clean Up (2 lines), Step (8 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFirework, s_pixel
- Used by: none
- Placed in rooms: Room5 (x1)

**AI summary**
**Summary**
The `o_part_emiter_firework_delta` object is a particle emitter used to create a firework effect. It uses an advanced particle system to manage and draw particles, with different types of particles for the main explosion, cinders, and fire. The emitter is placed in Room5 and responds to mouse input to create additional fire particles.

**Events**
- **Create_0**: Initializes the particle system and emitter, and sets up different particle types for the firework effect.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and creates a burst of fire particles. It also creates additional fire particles when the left mouse button is pressed.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Draws debug text showing the number of particles in the system.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `sFirework`, `s_pixel`
- **Global Variables**: None explicitly mentioned, but the script `AdvancedParticleSystem` is assumed to be a global or included script.
- **Instance Variables**: `ps` (particle system), `em` (emitter), `boom_part`, `cinder_part`, `fire_part`

**Potential issues**
- None found.

### o_part_emitter_wiggle
- parent: none | sprite: none
- Events: Create (29 lines), Clean Up (6 lines), Step (5 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel_big
- Used by: objects: oMenuPause
- Placed in rooms: Room3 (x1)

**AI summary**
**Summary**
The `o_part_emitter_wiggle` object is a particle emitter used to create visual effects in the game. It uses the `AdvancedParticleSystem` script to manage and draw particles in an elliptical area around its position. The emitter emits particles that have a specific life span, size, speed, and color.

**Events**
- **Create_0**: Initializes a new particle system and emitter, sets up the particle type, and configures its properties.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and emits a burst of particles.
- **Draw_0**: Draws the particle system.
- **Draw_64**: Contains commented-out code that would draw debug text.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel_big`
- **Globals**: None explicitly read or written
- **Resources**: Creates a particle system (`ps`) and an emitter (`pe`), and a particle type (`part_type1`).

**Potential issues**
- None found.

### o_part_rain_delta
- parent: none | sprite: none
- Events: Create (44 lines), Clean Up (2 lines), Step (3 lines), Draw (2 lines), Draw GUI (0 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: rMenu (x1)

**AI summary**
**Summary**
The `o_part_rain_delta` object is responsible for creating and managing a rain effect using an advanced particle system. It initializes a particle system with two types of particles: `water_drops` and `water`, and manages their behavior, including gravity, speed, and life span. The object is placed in the `rMenu` room.

**Events**
- **Create_0**: Initializes the particle system, sets up the emitter, and defines the properties of the `water_drops` and `water` particles.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and emits new `water` particles.
- **Draw_0**: Draws the particle system.

**Dependencies**
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel`
- **Globals**: `global.particles_debug_mode` (commented out)
- **Resources**: Creates and manages an `advanced_part_system` and `advanced_part_emitter`.

**Potential issues**
- None found.

### o_part_rain_moody
- parent: none | sprite: none
- Events: Create (47 lines), Clean Up (2 lines), Step (3 lines), Draw (2 lines), Draw GUI (0 lines)
- Uses: objects: oPlayer; scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Level (x1)

**AI summary**
**Summary**
The `o_part_rain_moody` object is a particle system designed to simulate rain. It creates two types of particles: `water_drops` and `water`. The `water_drops` fall vertically with a slight random direction and disappear halfway through their life. The `water` particles have a longer life, larger size, and can change their position based on the player's y-coordinate.

**Events**
- **Create_0**: Initializes the particle system and sets up the emitters and particle types.
- **CleanUp_0**: Destroys the particle system to free resources.
- **Step_0**: Steps the particle system and emits new `water` particles.
- **Draw_0**: Draws the particle system.

**Dependencies**
- **Objects**: `oPlayer`
- **Scripts**: `AdvancedParticleSystem`
- **Sprites**: `s_pixel`
- **Globals**: `global.particles_debug_mode` (commented out)
- **Variables**: `ps`, `pe`, `water_drops`, `water`

**Potential issues**
None found.

### obj_light
- parent: none | sprite: spr_light_point | flags: invisible
- Events: Create (40 lines), Clean Up (4 lines), Step (6 lines)
- Uses: objects: oPlayer; scripts: light_add_to_world, light_create_area, light_create_directional, light_create_line, light_create_point, light_create_spot, light_destroy, light_remove_from_world, lighting_global; sprites: spr_light_area, spr_light_directional, spr_light_line, spr_light_point, spr_light_spot
- Used by: objects: oLight_Area, oLight_Passway_Area, oPlayerLight_Area, oPlayerLight_Beam

**AI summary**
**Summary**
The `obj_light` object is responsible for creating and managing different types of lights in the game. It uses instance variables to determine the type of light to create and sets up its properties accordingly. The object also follows the player if it exists.

**Events**
- **Create_0**: Creates a light based on the `Light_Type` variable and sets up its properties. Adds the light to the world.
- **CleanUp_0**: Removes the light from the world and destroys it.
- **Step_0**: If the player exists, updates the light's position to follow the player.

**Dependencies**
- **Variables**: `Light_Type`, `Light_Shadow_Length`, `Light_Color`, `Light_Range`, `Light_Intensity`, `Light_Angle`, `Light_Direction`, `Light_Width`, `LUT_Intensity`
- **Scripts**: `light_add_to_world`, `light_create_area`, `light_create_directional`, `light_create_line`, `light_create_point`, `light_create_spot`, `light_destroy`, `light_remove_from_world`, `lighting_global`
- **Sprites**: `spr_light_area`, `spr_light_directional`, `spr_light_line`, `spr_light_point`, `spr_light_spot`
- **Objects**: `oPlayer`
- **Globals**: None explicitly read or written

**Potential issues**
- None found.

### obj_light_renderer
- parent: none | sprite: spr_light_renderer
- Events: Create (5 lines), Step (3 lines), Draw (19 lines), Draw End (5 lines)
- Uses: scripts: composite_shadow_map, draw_shadow_map, lighting_debug_shadow_casters, lighting_get_active_camera, lighting_global
- Used by: scripts: lighting_global
- Placed in rooms: Level (x1), LightingTest (x1)

**AI summary**
**Summary**
The `obj_light_renderer` object is responsible for rendering lighting and shadows in the game. It updates and draws the shadow map based on certain conditions and can debug shadow casters if enabled.

**Events**
- **Create_0**: Initializes the renderer by setting up a tick counter and marking the renderer as dirty. It also sets the global ambient shadow intensity.
- **Step_0**: Increments the tick counter every step.
- **Draw_0**: Updates the shadow map if necessary, checks for the existence of the shadow map surface, retrieves the active camera, and draws the shadow map. It also resets the dirty flag and tick counter after updating the shadow map.
- **Draw_73**: Debugs shadow casters if the global debug flag is enabled.

**Dependencies**
- **Variables/Scripts**:
  - `ambient_shadow`: Expected to be provided by another object or script.
  - `global.lightUpdateFrameDelay`: Read from the global variable.
  - `global.worldLights`: Read from the global variable.
  - `global.worldShadowMap`: Read from and written to the global variable.
  - `global.debugShadowCasters`: Read from the global variable.
  - `composite_shadow_map`: Script used to composite the shadow map.
  - `draw_shadow_map`: Script used to draw the shadow map.
  - `lighting_debug_shadow_casters`: Script used for debugging shadow casters.
  - `lighting_get_active_camera`: Script used to get the active camera.
- **Surfaces**: Uses `global.worldShadowMap` surface for shadow map operations.

**Potential issues**
- None found.

### obj_lighting_init
- parent: none | sprite: none | flags: persistent, invisible
- Events: Create (6 lines), Destroy (3 lines)
- Uses: scripts: lighting_free, lighting_global
- Used by: none
- Placed in rooms: Level (x1), LightingTest (x1)

**AI summary**
**Summary**
The `obj_lighting_init` object is responsible for initializing and cleaning up lighting in the game. It sets up lighting on creation and frees it on destruction. It also sets a custom frame delay for light updates.

**Events**
- **Create_0**: Initializes lighting by calling `lighting_global()` and sets a custom frame delay for light updates.
- **Destroy_0**: Frees lighting resources by calling `lighting_free()`.

**Dependencies**
- **Scripts**: `lighting_global`, `lighting_free`
- **Globals**: Reads and writes `global.lightUpdateFrameDelay`

**Potential issues**
None found.

### obj_shadow_caster
- parent: none | sprite: none | flags: invisible
- Events: Create (29 lines)
- Uses: scripts: lighting_global
- Used by: objects: oEnemyParent, oExplosiveBarril, oWall; scripts: light_update, lighting_debug_shadow_casters, lighting_pre_composite, shadow_casters_exist

**AI summary**
**Summary**
The `obj_shadow_caster` object is a base object used for creating shadow casters in a game. It initializes shadow caster properties and sets default flags and variables. This object is used by other objects like `oEnemyParent`, `oExplosiveBarril`, and `oWall`, and is referenced by scripts such as `light_update`, `lighting_debug_shadow_casters`, `lighting_pre_composite`, and `shadow_casters_exist`.

**Events**
- **Create_0**: Initializes shadow caster properties, sets default flags, and prepares internal variables for shadow casting.

**Dependencies**
- **Variables provided by child objects**: `polygon`
- **Global scripts used**: `lighting_global`
- **Variables read/written**: `flags`, `shadow_length`, `cached_polygon_area`, `outside_active_camera`, `last_camera`
- **Resources**: None explicitly created or freed in the provided code.

**Potential issues**
- **Undefined variable**: `polygon` is set to `undefined` but is expected to be provided by child objects. Ensure that all child objects properly define `polygon`.
- **Potential performance issue**: The comment suggests that the cached polygon area is maintained automatically, but there is no code provided for this maintenance. Ensure that this is handled elsewhere in the code.
- **Undefined variable**: `last_camera` is set to `undefined` but is used without being checked or set elsewhere in the provided code. Ensure that `last_camera` is properly initialized and updated.
- **Potential performance issue**: The comment suggests that the system optimizes static shadow casters, but there is no code provided for this optimization. Ensure that this is handled elsewhere in the code.

## Scripts

### AdvancedParticleSystem
- Functions: `advanced_part_system()` constructor, `particle(part_type)` constructor, `advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)` constructor, `advanced_part_type()` constructor, `advanced_part_emitter_burst(ps, part_emit, part_type, number)`, `advanced_part_particles_create(ps, x, y, part_type, number)`, `advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)`, `advanced_part_system_destroy(id)`
- Enums: `aps_shape`, `aps_distr`
- Uses: objects: oSteadyDeltaTime
- Used by: objects: o_part_emiter, o_part_emiter2, o_part_emiter2_delta, o_part_emiter_delta, o_part_emiter_fire, o_part_emiter_fire_delta, o_part_emiter_firework2_delta, o_part_emiter_firework_delta, o_part_emitter_wiggle, o_part_rain_delta, o_part_rain_moody; scripts: AdvancedParticleSystem_1, AdvancedParticleSystem_2

**AI summary**
**Summary**
This script defines a comprehensive particle system for GameMaker Studio 2.3+, including particle creation, updating, drawing, and destruction. It supports various particle behaviors such as movement, color and alpha blending, and death effects.

**Functions**
- **advanced_part_system()**: Initializes a particle system with lists for particles and emitters, sets up camera view, and defines functions for updating and drawing particles.
- **particle(part_type)**: Constructs a new particle with properties defined by the given particle type.
- **advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)**: Creates an emitter within a specified region and shape, adding it to the particle system.
- **advanced_part_type()**: Initializes a particle type with various properties like color, size, speed, and death effects.
- **advanced_part_emitter_burst(ps, part_emit, part_type, number)**: Spawns a burst of particles from an emitter, considering deltatime.
- **advanced_part_particles_create(ps, x, y, part_type, number)**: Creates a specified number of particles at a given position.
- **advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)**: Updates the region and shape of an existing emitter.
- **advanced_part_system_destroy(id)**: Destroys a particle system, cleaning up its lists and deleting the system instance.

**Dependencies**
- **Globals**: `global.dt_steady`
- **Objects**: `oSteadyDeltaTime`
- **Other scripts**: `AdvancedParticleSystem_1`, `AdvancedParticleSystem_2`

**Potential issues**
- **Line 103**: The `aps_update_interval` macro is commented out and not used.
- **Line 120**: The `update_interval` variable is commented out and not used.
- **Line 314**: The `angle_wiggle` functionality is commented out and incomplete.
- **Line 365**: The `additiveblend` gpu_set_blendmode calls are temporary and should be reviewed.
- **Line 400**: The `spawn_timer` reset in `advanced_part_emitter_burst` might not work as intended due to the `mod` operation.
- **Line 417**: The `part_step_function` is not fully implemented, as it uses `method(self, part_type.part_step_func)` which might not work as expected.
- **Line 427**: The `part_step_number` check in `particle` constructor is commented out and not used.

### AdvancedParticleSystem_1
- Functions: `advanced_part_system()` constructor, `particle(part_type)` constructor, `advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)` constructor, `advanced_part_type()` constructor, `advanced_part_emitter_burst(ps, part_emit, part_type, number)`, `advanced_part_particles_create(ps, x, y, part_type, number)`, `advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)`, `advanced_part_system_destroy(id)`, `AdvancedParticleSystem_1()`
- Enums: `aps_shape`, `aps_distr`
- Uses: objects: oSteadyDeltaTime; scripts: AdvancedParticleSystem
- Used by: none

**AI summary**
**Summary**
This script defines an advanced particle system with various functionalities for creating, updating, and drawing particles. It includes classes for particle systems, particles, emitters, particle types, and burst emitters, along with helper functions for managing these components.

**Functions**
- **advanced_part_system()**: Initializes a particle system with lists for particles and emitters, sets up camera view, and defines functions for updating and drawing particles.
- **particle(part_type)**: Constructs a particle with properties defined by a particle type, including position, direction, speed, gravity, size, angle, color, and alpha blending.
- **advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)**: Creates an emitter within a particle system with specified bounds, shape, and distribution.
- **advanced_part_type()**: Initializes a particle type with default properties for sprite, color, size, orientation, life, gravity, point gravity, speed, direction, and step functions.
- **advanced_part_emitter_burst(ps, part_emit, part_type, number)**: Spawns a burst of particles from an emitter, considering deltatime for smooth particle creation.
- **advanced_part_particles_create(ps, x, y, part_type, number)**: Creates a specified number of particles at a given position with a specified type.
- **advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)**: Updates the region of an existing emitter.
- **advanced_part_system_destroy(id)**: Destroys a particle system by cleaning up its lists and deleting the system instance.
- **AdvancedParticleSystem_1()**: An empty script that may be intended for initialization or other purposes.

**Dependencies**
- **Globals**: `dt_steady` (used in `enabledelta` and `step` functions)
- **Objects**: `oSteadyDeltaTime` (used in `enabledelta` function)
- **Other Scripts**: `AdvancedParticleSystem` (mentioned in known references but not used in the provided code)
- **Variables**: `room_speed` (used in `advanced_part_type` constructor)

**Potential issues**
- None found.

### AdvancedParticleSystem_2
- Functions: `advanced_part_system()` constructor, `particle(part_type)` constructor, `advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)` constructor, `advanced_part_type()` constructor, `advanced_part_emitter_burst(ps, part_emit, part_type, number)`, `advanced_part_particles_create(ps, x, y, part_type, number)`, `advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)`, `advanced_part_system_destroy(id)`, `AdvancedParticleSystem_2()`
- Enums: `aps_shape`, `aps_distr`
- Uses: objects: oSteadyDeltaTime; scripts: AdvancedParticleSystem
- Used by: none

**AI summary**
**Summary**
This script defines a complex particle system with various features such as different shapes, distributions, gravity, and color/alpha blending. It includes constructors for particles, emitters, and particle types, as well as functions to create and manage particles.

**Functions**
- **advanced_part_system()**: Initializes a new particle system with lists for particles and emitters, and functions for updating and drawing particles.
- **particle(part_type)**: Constructs a new particle with properties defined by a particle type.
- **advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)**: Creates a new emitter within a particle system with specified boundaries, shape, and distribution.
- **advanced_part_type()**: Initializes a new particle type with various properties like sprite, color, size, speed, and gravity.
- **advanced_part_emitter_burst(ps, part_emit, part_type, number)**: Spawns a burst of particles from an emitter.
- **advanced_part_particles_create(ps, x, y, part_type, number)**: Creates a specified number of particles at a given position.
- **advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)**: Updates the region of an existing emitter.
- **advanced_part_system_destroy(id)**: Destroys a particle system, freeing its resources.

**Dependencies**
- **Globals**: `global.dt_steady`
- **Objects**: `oSteadyDeltaTime`
- **Scripts**: `AdvancedParticleSystem`

**Potential issues**
- **Line 101**: The `get_view` function is defined but never used.
- **Line 166**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 224**: The `part_step_number` feature is commented out and incomplete.
- **Line 259**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 300**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 346**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 392**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 438**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 484**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 530**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 576**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 622**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 668**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 714**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 760**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 806**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 852**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 898**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 944**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 990**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1036**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1082**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1128**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1174**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1220**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1266**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1312**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1358**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1404**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1450**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1496**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1542**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1588**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1634**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1680**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1726**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1772**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1818**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1864**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1910**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 1956**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2002**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2048**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2094**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2140**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2186**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2232**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2278**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2324**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2370**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2416**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2462**: The `angle_wiggle` feature is commented out and incomplete.
- **Line 2508**: The `angle_wiggle`

### TextFunctions
- Functions: `text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha)`, `shadowed_text(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha)`, `shaking_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _delta_x, _delta_y)`, `shaking_shadowed_text(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y)`, `typewriter_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show)`, `shadowed_typewriter_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show, _shadow_offset, _shadow_color, _shadow_alpha)`, `text_with_shaking_shadow(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _outline_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y)`
- Uses: scripts: draw_text_transformed_outlined
- Used by: objects: oMenuDeath, oMenuMain, oMenuPause; scripts: draw_text_transformed_outlined

**AI summary**
**Summary**
This script provides various functions for drawing text with different effects such as shadows, shaking, and typewriter-like text effects. It is used by multiple objects and scripts in the game.

**Functions**
- **text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha)**: Draws text at a specified position with the given font, alignment, color, and alpha.
- **shadowed_text(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha)**: Draws text with a shadow at a specified position, font, alignment, colors, and alpha.
- **shaking_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _delta_x, _delta_y)**: Draws text with a shaking effect at a specified position, font, alignment, color, alpha, and shake range.
- **shaking_shadowed_text(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y)**: Draws text with a shadow and shaking effect at a specified position, font, alignment, colors, alpha, and shake range.
- **typewriter_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show)**: Draws text with a typewriter effect, showing a specified number of characters at a time.
- **shadowed_typewriter_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show, _shadow_offset, _shadow_color, _shadow_alpha)**: Draws text with a shadow and typewriter effect, showing a specified number of characters at a time.
- **text_with_shaking_shadow(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _outline_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y)**: Draws text with a shadow, shaking effect, and outline at a specified position, font, alignment, colors, alpha, and shake range.

**Dependencies**
- **draw_text_transformed_outlined**: Used in the `text_with_shaking_shadow` function to draw text with an outline.

**Potential issues**
None found.

### UsefulScripts
- Functions: `Approach(_value, _dest, _amount)`, `ApproachDelta(_value, _dest, _amount)`, `Chance(_value)`, `Wave(_from, _dest, _duration, _offset)`, `ReachTween(_value, _destination, _smoothness)`, `DrawSetText(_color, _font, _haling, _valing, _alpha)`, `DrawTextShadow(_x, _y, _string)`, `draw_text_outline(_x, _y, _string, _outwidth, _outcolor, _outfidelity)`, `draw_text_outline_transformed(_x, _y, _string, _xscale, _yscale, _outwidth, _outcolor, _outfidelity)`, `draw_rectangle_width(x1, y1, x2, y2, _width, _inside, _outline)`, `string_zeroes_scripts(_string, _nubmer)`, `draw_circle_curve(_xx, _yy, _radius, _bones, _angle, _angleadd, _width, _outline)`, `draw_healthbar_circular(center_x, center_y, _radius, _start_ang, _health, _sprite)`
- Uses: none
- Used by: objects: oPointTarget

**AI summary**
**Summary**
The `UsefulScripts` script contains various utility functions for common tasks such as approaching a value, calculating a wave, drawing text with outlines, and rendering circular health bars. These functions are designed to simplify and streamline the development of game mechanics and visual elements.

**Functions**
- **Approach(_value, _dest, _amount)**: Gradually approaches a target value by a specified amount each frame.
- **ApproachDelta(_value, _dest, _amount)**: Gradually approaches a target value by a specified amount each frame, using a different calculation method.
- **Chance(_value)**: Returns true with a probability equal to the given value.
- **Wave(_from, _dest, _duration, _offset)**: Calculates a value that oscillates between two points over time.
- **ReachTween(_value, _destination, _smoothness)**: Smoothly transitions a value towards a destination using a specified smoothness factor.
- **DrawSetText(_color, _font, _haling, _valing, _alpha)**: Sets the drawing color, font, alignment, and alpha for subsequent text drawing.
- **DrawTextShadow(_x, _y, _string)**: Draws text with a shadow effect.
- **draw_text_outline(_x, _y, _string, _outwidth, _outcolor, _outfidelity)**: Draws text with an outline.
- **draw_text_outline_transformed(_x, _y, _string, _xscale, _yscale, _outwidth, _outcolor, _outfidelity)**: Draws text with an outline and transformation.
- **draw_rectangle_width(x1, y1, x2, y2, _width, _inside, _outline)**: Draws a rectangle with a specified width.
- **string_zeroes_scripts(_string, _nubmer)**: Pads a string with leading zeroes to a specified length.
- **draw_circle_curve(_xx, _yy, _radius, _bones, _angle, _angleadd, _width, _outline)**: Draws a curved circle or sector.
- **draw_healthbar_circular(center_x, center_y, _radius, _start_ang, _health, _sprite)**: Draws a circular health bar using a sprite.

**Dependencies**
- **Globals**: `global.dt_steady`
- **Objects**: None
- **Other Scripts**: None
- **Variables**: `current_time`, `pi`, `c_black`, `c_white`

**Potential issues**
- None found.

### chance
- Functions: `chance(argument0)`
- Uses: none
- Used by: objects: oEnemyParent, oLevelGen, oZombie

**AI summary**
**Summary**
The `chance` script is a utility function designed to determine if a given percentage chance condition is met. It returns `true` if the provided chance percentage is greater than or equal to a randomly generated number between 0 and 99.

**Functions**
- **chance(percent_chance)**: Determines if the provided percentage chance is met by comparing it to a random number between 0 and 99. Returns `true` if the condition is met, otherwise `false`.

**Dependencies**
None found.

**Potential issues**
None found.

### composite_shadow_map
- Functions: `composite_shadow_map(argument0)`
- Uses: scripts: get_next_pot, light_cull, light_draw_shadow_map, light_enumerate_extensions, light_maintain_shadow_map, lighting_get_active_camera, lighting_global, lighting_post_composite, lighting_pre_composite, shadow_casters_exist, shadow_map_ensure_exists
- Used by: objects: obj_light_renderer

**AI summary**
**Summary**
The `composite_shadow_map` script is responsible for compositing shadow maps from all the lights in a scene. It handles the pre- and post-composite steps, checks for the existence of shadow casters, ensures the existence of shadow maps, and composites each light's shadow map into a global shadow map using shaders.

**Functions**
- **composite_shadow_map(lights)**: Composites shadow maps from all the lights in the provided list. Returns true if successful, otherwise false.

**Dependencies**
- **Globals**: `global.tmp_ColorArray`, `global.lightMaxUniqueShadowMapSize`, `global.lightShadowMap`, `global.worldShadowMap`, `global.u_LutIntensity`, `global.u_TexelSize`, `global.u_LightPosition`, `global.u_LightColor`, `global.u_LightRange`, `global.u_LightIntensity`, `global.u_LightAngle`, `global.u_LightDirection`, `global.u_LightWidth`, `global.u_AttenuationEnabled`, `global.u_LineEmitterPoint1`, `global.u_LineEmitterPoint2`, `global.u_LightType`
- **Objects**: `obj_light_renderer`
- **Other scripts**: `get_next_pot`, `light_cull`, `light_draw_shadow_map`, `light_enumerate_extensions`, `light_maintain_shadow_map`, `lighting_get_active_camera`, `lighting_global`, `lighting_post_composite`, `lighting_pre_composite`, `shadow_casters_exist`, `shadow_map_ensure_exists`

**Potential issues**
- None found.

### cross_product
- Functions: `cross_product(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: tri_direction

**AI summary**
**Summary**
The `cross_product` script calculates the cross product of two 2D vectors. It validates the input vectors to ensure they are arrays of the correct length and returns the computed cross product.

**Functions**
- **cross_product(v1, v2)**: Computes and returns the cross product of two 2D vectors `v1` and `v2`.

**Dependencies**
- **__LIGHTING_ERROR_CHECKS**: A global variable used to enable or disable error checks.
- **eVertex.Count**: A constant or variable representing the expected length of the vertex arrays.
- **eVertex.X**: An index for the X component of a vertex.
- **eVertex.Y**: An index for the Y component of a vertex.
- **show_debug_message**: A function used to display debug messages.
- **is_array**: A function to check if a variable is an array.
- **array_length_1d**: A function to get the length of a 1D array.

**Potential issues**
- The validation check for `v2` is incorrectly using `v1` instead of `v2`:
  ```gml
  if(!is_array(v1) || array_length_1d(v1) != eVertex.Count) {
  ```
  This should be:
  ```gml
  if(!is_array(v2) || array_length_1d(v2) != eVertex.Count) {
  ```

### damageNumber
- Functions: `damageNumber(color, damage, duration, text_angle, crit, scale)`
- Uses: scripts: draw_text_transformed_outlined
- Used by: objects: oDamageNumber

**AI summary**
**Summary**
The `damageNumber` script is designed to display a damage number popup in a game. It handles the rendering of the damage amount with optional critical hit effects, scaling, and rotation.

**Functions**
- **damageNumber(color, damage, duration, text_angle, crit, scale)**: Renders a damage number popup with the specified color, damage amount, duration, angle, critical hit status, and scale. Adjusts the font and color based on whether it's a critical hit. Returns the updated duration.

**Dependencies**
- **draw_text_transformed_outlined**: A script or function used to draw text with a transformed outline.
- **fDamagePopUp_Small**: A font resource for small damage numbers.
- **fDamagePopUp_Big**: A font resource for large damage numbers (used for critical hits).
- **c_yellow**: A color constant for yellow (used for critical hits).
- **c_black**: A color constant for black (used for text outline).
- **x, y**: Position variables (assumed to be global or passed in context not shown).

**Potential issues**
- None found.

### draw_shadow_map
- Functions: `draw_shadow_map(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: objects: obj_light_renderer

**AI summary**
**Summary**
The `draw_shadow_map` script is designed to draw a composited shadow map at a specified position on the screen. It uses a subtractive blend mode and a shader to apply shadow intensity and texel size to the shadow map.

**Functions**
- **draw_shadow_map(argument0, argument1)**: Draws the shadow map at the specified X and Y positions using a subtractive blend mode and a shader.

**Dependencies**
- **Global variables**: `worldShadowMap`, `u_AmbientShadow`, `ambientShadowIntensity`, `u_TexelSize_ShadowMap`
- **Scripts**: `lighting_global`
- **Objects**: `obj_light_renderer`
- **Shader**: `__WORLD_SHADOW_MAP_SHADER`

**Potential issues**
None found.

### draw_text_transformed_outlined
- Functions: `draw_text_transformed_outlined(xx, yy, outline_color, color, text, scale, text_angle, offset)`
- Uses: scripts: TextFunctions
- Used by: objects: oCamera; scripts: TextFunctions, damageNumber

**AI summary**
**Summary**
This script is designed to draw text with an outlined effect. It uses the `draw_text_transformed` function to render the text with a specified outline color and then overlays the text with a specified color.

**Functions**
- **draw_text_transformed_outlined(xx, yy, outline_color, color, text, scale, text_angle, offset)**: Draws the given text with an outlined effect at the specified position, using the provided outline and text colors, scale, angle, and offset.

**Dependencies**
- **draw_text_transformed**: This function is used to draw the text with transformations applied.
- **TextFunctions**: This script is referenced in the known references, indicating it might be used or referenced elsewhere in the project.

**Potential issues**
None found.

### ext_light_attenuation_apply
- Functions: `ext_light_attenuation_apply(argument0)`
- Uses: none
- Used by: scripts: lighting_global

**AI summary**
**Summary**
This script is designed to apply light attenuation effects to a specified light in a game. It configures shader uniforms to enable and set parameters for the attenuation effect.

**Functions**
- **ext_light_attenuation_apply(light)**: Applies the light attenuation extension to the given light by enabling attenuation in the shader and setting the attenuation parameters.

**Dependencies**
- Globals: `global.u_AttenuationEnabled`, `global.u_AttenuationAlpha`, `global.u_AttenuationBeta`
- Other scripts: None found

**Potential issues**
None found.

### ext_light_attenuation_init
- Functions: `ext_light_attenuation_init()`
- Uses: scripts: lighting_global
- Used by: scripts: lighting_global

**AI summary**
**Summary**
This script initializes global variables and shader uniforms for light attenuation in a game, setting up parameters for controlling how light intensity decreases with distance.

**Functions**
- **ext_light_attenuation_init()**: Initializes global variables for light attenuation parameters and retrieves shader uniform locations.

**Dependencies**
- **global.EXT_attenuation_alpha**: Stores the alpha attenuation parameter.
- **global.EXT_attenuation_beta**: Stores the beta attenuation parameter.
- **global.u_AttenuationEnabled**: Stores the uniform location for enabling attenuation in the shader.
- **global.u_AttenuationAlpha**: Stores the uniform location for the alpha attenuation parameter in the shader.
- **global.u_AttenuationBeta**: Stores the uniform location for the beta attenuation parameter in the shader.
- **__LIGHT_SHADER**: A global variable or constant representing the light shader program.

**Potential issues**
- None found.

### ext_light_attenuation_reset
- Functions: `ext_light_attenuation_reset(argument0)`
- Uses: none
- Used by: scripts: lighting_global

**AI summary**
**Summary**
This script, `ext_light_attenuation_reset`, is designed to reset the attenuation settings of a light after an extension module has been applied. It disables the attenuation in the shader by setting a uniform variable to `false`.

**Functions**
- **ext_light_attenuation_reset(light)**: Resets the attenuation settings for the specified light by disabling it in the shader.

**Dependencies**
- **global.u_AttenuationEnabled**: A global uniform variable used to control attenuation in the shader.

**Potential issues**
None found.

### get_next_pot
- Functions: `get_next_pot(argument0)`
- Uses: none
- Used by: scripts: composite_shadow_map, light_maintain_shadow_map

**AI summary**
**Summary**
The script `get_next_pot` calculates the next power of two number greater than or equal to a given 32-bit integer.

**Functions**
- **get_next_pot(n)**: Calculates and returns the next power of two number closest to the given integer `n`.

**Dependencies**
None found.

**Potential issues**
None found.

### init
- No named functions found (137 lines; probably a legacy script callable as `init`)
- Uses: none
- Used by: objects: oGame

**AI summary**
**Summary**
This script initializes various particle types used in the game, storing them in global variables for easy access.

**Functions**
- **part_type_create()**: Creates a new particle type and returns its ID.
- **part_type_life(p, min, max)**: Sets the life span of the particle type `p` to a random value between `min` and `max`.
- **part_type_speed(p, min, max, min_inherit, max_inherit)**: Sets the speed of the particle type `p` to a random value between `min` and `max`, with optional inheritance from the emitter.
- **part_type_size(p, min, max, min_inherit, max_inherit)**: Sets the size of the particle type `p` to a random value between `min` and `max`, with optional inheritance from the emitter.
- **part_type_shape(p, shape)**: Sets the shape of the particle type `p` to one of the predefined shapes.
- **part_type_color2(p, color1, color2)**: Sets the color of the particle type `p` to interpolate between `color1` and `color2`.
- **part_type_color3(p, color1, color2, color3)**: Sets the color of the particle type `p` to interpolate between `color1`, `color2`, and `color3`.
- **part_type_direction(p, min, max, min_inherit, max_inherit)**: Sets the direction of the particle type `p` to a random value between `min` and `max`, with optional inheritance from the emitter.
- **part_type_gravity(p, strength, angle)**: Sets the gravity effect on the particle type `p` with a given `strength` and `angle`.
- **part_type_alpha2(p, min, max)**: Sets the alpha transparency of the particle type `p` to interpolate between `min` and `max`.
- **part_type_orientation(p, min, max, min_inherit, max_inherit, inherit)**: Sets the orientation of the particle type `p` to a random value between `min` and `max`, with optional inheritance from the emitter.

**Dependencies**
- **global.ptEmpty**: Stores the ID of the empty default particle type.
- **global.ptBlood**: Stores the ID of the blood particle type.
- **global.ptBloodPool**: Stores the ID of the blood pool particle type.
- **global.ptGunShot**: Stores the ID of the gunshot particle type.
- **global.ptItemAura**: Stores the ID of the item aura particle type.
- **global.ptCharge**: Stores the ID of the charge particle type.
- **global.ptFlamethrower**: Stores the ID of the flamethrower particle type.
- **global.ptExplosion**: Stores the ID of the explosion particle type.
- **global.ptArrow**: Stores the ID of the arrow particle type.
- **global.ptGas**: Stores the ID of the gas particle type.

**Potential issues**
None found.

### keyboard_get_number
- Functions: `keyboard_get_number()`
- Uses: none
- Used by: none

**AI summary**
**Summary**
This script is designed to determine which number key (0-9) is currently pressed on the keyboard. If no number key is pressed, it returns -1.

**Functions**
- **keyboard_get_number()**: Returns the numeric value of the pressed number key (0-9) or -1 if no number key is pressed.

**Dependencies**
- **keyboard_key**: This global variable is assumed to hold the ASCII value of the currently pressed key.

**Potential issues**
- None found.

### light_acknowledge_shadow_caster
- Functions: `light_acknowledge_shadow_caster()`
- Uses: scripts: lighting_global
- Used by: none

**AI summary**
**Summary**
This script is designed to remove one or more shadow casters from the ignore list of a specified light, allowing the light to acknowledge and cast shadows from these objects.

**Functions**
- **light_acknowledge_shadow_caster(light, [shadow_caster,...])**: Removes specified shadow casters from the ignore list of the given light.

**Dependencies**
- **lighting_global**: Used for error checking and constants like `__LIGHTING_ERROR_CHECKS`, `eLight.Count`, `eLight.IgnoreSet`, and `eLightFlags.Dirty`.

**Potential issues**
None found.

### light_add_extension
- Functions: `light_add_extension(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: light_create

**AI summary**
**Summary**
This script is designed to add an extension module to a light object. It checks if the light already has a list of extension modules and creates one if it doesn't, then adds the specified extension to the list.

**Functions**
- **light_add_extension(light, ext)**: Adds an extension module to the specified light object.

**Dependencies**
- **lighting_global**: This script uses a variable or constant `eLight.ExtensionModules` from the `lighting_global` script or object.

**Potential issues**
None found.

### light_add_to_world
- Functions: `light_add_to_world(argument0)`
- Uses: none
- Used by: objects: obj_light

**AI summary**
**Summary**
This script is designed to add a light to the world, specifically by adding it to a global list that tracks all lights for compositing purposes.

**Functions**
- **light_add_to_world(light)**: Adds the specified light to the global list of world lights.

**Dependencies**
- **Global variable**: `global.worldLights` (a ds_list that presumably holds all lights in the world).

**Potential issues**
None found.

### light_create
- Functions: `light_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6)`
- Uses: scripts: light_add_extension, lighting_global; sprites: spr_lut_light_intensity_area, spr_lut_light_intensity_line, spr_lut_light_intensity_linear, spr_lut_light_intensity_spot
- Used by: scripts: light_create_area, light_create_directional, light_create_line, light_create_point, light_create_spot

**AI summary**
**Summary**
The `light_create` script is responsible for creating a new light object with specified properties such as position, type, color, range, and intensity. It initializes various attributes and sets up default values for different light types.

**Functions**
- **light_create(x, y, shadow_length, type, color, range, intensity)**: Creates a new light object with the given properties and returns the light object.

**Dependencies**
- **Scripts**: `light_add_extension`, `lighting_global`
- **Sprites**: `spr_lut_light_intensity_area`, `spr_lut_light_intensity_line`, `spr_lut_light_intensity_linear`, `spr_lut_light_intensity_spot`
- **Global**: `global.lightDefaultExtensions`

**Potential issues**
- None found.

### light_create_area
- Functions: `light_create_area(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

**AI summary**
**Summary**
This script is designed to create a new area light in a game using the GameMaker Language (GML). It sets up the light with various properties such as position, shadow length, color, range, intensity, width, and direction.

**Functions**
- **light_create_area(x, y, shadow_length, color, range, intensity, width, direction)**: Creates and configures an area light with the specified properties and returns the created light.

**Dependencies**
- **light_create(x, y, shadow_length, light_type, color, range, intensity)**: A script used to create a light.
- **lighting_global**: A global variable or script that might be used elsewhere in the project.
- **eLightType.Area**: An enumeration or constant representing the type of light.
- **eLight.Direction**: An enumeration or constant representing the direction property of the light.
- **eLight.Width**: An enumeration or constant representing the width property of the light.

**Potential issues**
- None found.

### light_create_directional
- Functions: `light_create_directional(argument0, argument1, argument2, argument3, argument4, argument5, argument6)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

**AI summary**
**Summary**
This script creates a directional light in a game using the GameMaker Language (GML). It takes several parameters such as position, shadow length, color, range, intensity, and direction to define the light's properties.

**Functions**
- **light_create_directional(x, y, shadow_length, color, range, intensity, direction)**: Creates a directional light at the specified position with given properties and returns the created light.

**Dependencies**
- **light_create**: A script used to create a light.
- **lighting_global**: A global variable or script that might be used elsewhere in the project.
- **eLightType.Directional**: An enumeration or constant used to specify the type of light.
- **eLight.Direction**: An enumeration or constant used to set the direction of the light.

**Potential issues**
None found.

### light_create_extension
- Functions: `light_create_extension(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: lighting_global

**AI summary**
**Summary**
This script creates an extension module instance for lighting effects. It takes two scripts as arguments: one for applying the extension to a light and another for cleaning up after the extension has been applied.

**Functions**
- **light_create_extension(scr_apply, scr_cleanup)**: Creates and returns an extension module instance with the provided apply and cleanup scripts.

**Dependencies**
- **lighting_global**: This script is used by the `lighting_global` script.

**Potential issues**
None found.

### light_create_line
- Functions: `light_create_line(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

**AI summary**
**Summary**
This script is designed to create a line light in a game. It takes several parameters such as position, shadow length, color, range, intensity, width, and direction to define the light's properties.

**Functions**
- **light_create_line(x, y, shadow_length, color, range, intensity, width, direction)**: Creates a line light at the specified position with given properties and returns the created light.

**Dependencies**
- **light_create(x, y, shadow_length, light_type, color, range, intensity)**: A script used to create a light.
- **lighting_global**: A global variable or script that might be used elsewhere in the project.
- **eLightType.Line**: An enumeration or constant representing the line light type.
- **eLight.Direction**: An enumeration or constant representing the direction property of the light.
- **eLight.Width**: An enumeration or constant representing the width property of the light.

**Potential issues**
None found.

### light_create_point
- Functions: `light_create_point(argument0, argument1, argument2, argument3, argument4, argument5)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

**AI summary**
**Summary**
This script is used to create a new point light in a game. It takes several parameters such as position, shadow length, color, range, and intensity, and uses them to create the light.

**Functions**
- **light_create_point(x, y, shadow_length, color, range, intensity)**: Creates a point light at the specified position with the given properties and returns the created light.

**Dependencies**
- **light_create**: A script used to create a light.
- **eLightType.Point**: An enumeration or constant used to specify the type of light as a point light.
- **lighting_global**: A global variable or script that might be used elsewhere in the lighting system.

**Potential issues**
None found.

### light_create_spot
- Functions: `light_create_spot(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

**AI summary**
**Summary**
This script is designed to create a spot light in a game using GameMaker Language (GML). It takes several parameters to define the light's position, color, range, intensity, angle, and direction, and returns the created light object.

**Functions**
- **light_create_spot(x, y, shadow_length, color, range, intensity, angle, direction)**: Creates a spot light at the specified position with given properties and returns the light object.

**Dependencies**
- **light_create(x, y, shadow_length, light_type, color, range, intensity)**: A script used to create a light object.
- **lighting_global**: A global variable or script that might be used elsewhere in the project, though not directly referenced in this script.

**Potential issues**
- None found.

### light_cull
- Functions: `light_cull(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
The `light_cull` script determines whether a given light is culled (should not be rendered) for the current camera. It checks if the light is within the camera's view and if it is not an infinite light.

**Functions**
- **light_cull(light, camera)**: Determines if the provided light is culled for the given camera. Returns `true` if culled, `false` otherwise.

**Dependencies**
- **lighting_global**: Used for error checking and constants.
- **lighting_get_active_camera**: Referenced in the description but not directly in the script.
- **eLight.Count, eLight.Type, eLight.Range, eLight.X, eLight.Y**: Constants from `lighting_global`.
- **eLightingCamera.X, eLightingCamera.Y, eLightingCamera.Width, eLightingCamera.Height**: Constants from `lighting_global`.
- **rectangle_in_rectangle**: A built-in GML function to check if two rectangles overlap.

**Potential issues**
- None found.

### light_destroy
- Functions: `light_destroy(argument0)`
- Uses: scripts: lighting_global
- Used by: objects: obj_light; scripts: lighting_free

**AI summary**
**Summary**
The `light_destroy` script is designed to properly destroy a light object by freeing up all associated resources such as vertex buffers, shadow maps, and data structures.

**Functions**
- **light_destroy(light)**: Destroys the specified light by freeing its associated resources.

**Dependencies**
- **lighting_global**: Used for constants or definitions related to light properties.
- **obj_light**: Object that uses this script.
- **lighting_free**: Script that might use this script.

**Potential issues**
- The line `if(static_storage != undefined) ds_map_destroy(static_storage);` is duplicated. The second call to `ds_map_destroy(static_storage);` should be removed to avoid unnecessary operations.

### light_draw_shadow_map
- Functions: `light_draw_shadow_map(argument0, argument1, argument2)`
- Uses: scripts: light_update, lighting_global
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
This script, `light_draw_shadow_map`, is responsible for drawing a light's shadow map to a specified surface. It checks if the light and surface are valid, and whether the light needs to be redrawn based on its flags. If so, it updates the light's vertex buffer and draws the shadow map.

**Functions**
- **light_draw_shadow_map(light, surface, update)**: Draws the light's shadow map to the specified surface, updating the light if required.

**Dependencies**
- **light_update(light)**: Script used to update the light's vertex buffer.
- **lighting_global**: Global variable or script used for lighting-related constants and settings.
- **eLight.Count**: Constant from `lighting_global` indicating the expected size of the light array.
- **eLight.Flags**: Constant from `lighting_global` used to access flags in the light array.
- **eLightFlags.UsesUniqueShadowMap**: Flag from `lighting_global` indicating if the light uses a unique shadow map.
- **eLightFlags.CastsShadows**: Flag from `lighting_global` indicating if the light casts shadows.
- **eLightFlags.Dirty**: Flag from `lighting_global` indicating if the light needs to be redrawn.
- **eLight.VertexBuffer**: Constant from `lighting_global` used to access the vertex buffer in the light array.

**Potential issues**
- None found.

### light_enumerate_extensions
- Functions: `light_enumerate_extensions(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
This script enumerates and applies all extension modules of a given light by executing a specified script for each extension.

**Functions**
- **light_enumerate_extensions(light, ext_script)**: Enumerates and applies all extension modules of a given light by executing a specified script for each extension.

**Dependencies**
- **lighting_global**: Used by the script, though not directly referenced in the provided code.
- **eLight.ExtensionModules**: A constant or variable used to access the list of extension modules for a light.
- **ds_list_size**: A function used to get the size of a list.
- **ds_list_find_value**: A function used to find a value in a list by index.
- **script_execute**: A function used to execute a script dynamically.

**Potential issues**
- None found.

### light_ignore_shadow_caster
- Functions: `light_ignore_shadow_caster()`
- Uses: scripts: lighting_global
- Used by: none

**AI summary**
**Summary**
This script is designed to configure a light to ignore one or more shadow casters, effectively making those shadow casters invisible to the specified light.

**Functions**
- **light_ignore_shadow_caster(light, [shadow_caster,...])**: Sets up a light to ignore the specified shadow casters by adding them to an ignore list associated with the light.

**Dependencies**
- **lighting_global**: This script uses the `lighting_global` script, though it is not directly referenced in the provided code snippet.
- **eLight.Count**: An enumeration or constant used to validate the size of the light array.
- **eLight.IgnoreSet**: An enumeration or constant used as a key to store the ignore map in the light array.
- **eLightFlags.Dirty**: An enumeration or constant used to mark the light as dirty.
- **__LIGHTING_ERROR_CHECKS**: A global variable used to enable or disable error checks.

**Potential issues**
- None found.

### light_maintain_shadow_map
- Functions: `light_maintain_shadow_map(argument0)`
- Uses: scripts: get_next_pot, lighting_global
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
The `light_maintain_shadow_map` script is responsible for managing the shadow map for a given light. It ensures that the shadow map is created, resized, or freed as necessary based on the light's properties and whether it uses a unique shadow map.

**Functions**
- **light_maintain_shadow_map(light)**: Maintains the shadow map for the given light, ensuring it is valid and properly sized. Returns `true` if the shadow map is valid, otherwise `false`.

**Dependencies**
- **get_next_pot**: A script used to get the next power of two for a given number.
- **lighting_global**: A global variable or structure that contains constants or settings related to lighting.
- **eLight.ShadowMap**: An enumeration or constant used to access the shadow map property of a light.
- **eLight.Flags**: An enumeration or constant used to access the flags property of a light.
- **eLightFlags.UsesUniqueShadowMap**: A flag within the `eLight.Flags` enumeration that indicates whether a light uses a unique shadow map.

**Potential issues**
- None found.

### light_remove_from_world
- Functions: `light_remove_from_world(argument0)`
- Uses: none
- Used by: objects: obj_light

**AI summary**
**Summary**
This script is designed to remove a specified light from a global list of lights in the game world.

**Functions**
- **light_remove_from_world(light)**: Removes the specified light from the global list of lights.

**Dependencies**
- **global.worldLights**: A data structure (likely a ds_list) that holds all the lights in the world.

**Potential issues**
None found.

### light_static_get_array
- Functions: `light_static_get_array(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: light_update

**AI summary**
**Summary**
This script retrieves the static buffer for a given light and shadow caster pair from a light's static storage.

**Functions**
- **light_static_get_array(light, shadow_caster)**: Retrieves the static buffer for the specified light and shadow caster pair from the light's static storage.

**Dependencies**
- **lighting_global**: This script uses the `lighting_global` script, though the specific usage is not detailed in the provided code snippet.

**Potential issues**
None found.

### light_static_set_array
- Functions: `light_static_set_array(argument0, argument1, argument2)`
- Uses: scripts: lighting_global
- Used by: scripts: light_update

**AI summary**
**Summary**
This script sets a static buffer for a light and shadow caster pair. It ensures that a static storage map is created for the light if it doesn't already exist, and then stores the provided buffer array associated with the shadow caster.

**Functions**
- **light_static_set_array(light, shadow_caster, buffer)**: Sets the static buffer for a light and shadow caster pair.

**Dependencies**
- **lighting_global**: Used by the script.
- **eLight.StaticStorage**: A constant or variable used to access the static storage within the light object.
- **ds_map_create()**: A function to create a new data structure map.

**Potential issues**
None found.

### light_trace_polygon
- Functions: `light_trace_polygon(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: light_update

**AI summary**
**Summary**
The `light_trace_polygon` script is designed to trace a shadow for a given polygon from a provided light source. It returns an array of vertices representing the shadow as a triangle list, or `undefined` if no shadow is cast.

**Functions**
- **light_trace_polygon(shadow_caster, light)**: Traces a shadow for the given polygon from the provided light and returns an array of vertices representing the shadow.

**Dependencies**
- **Global variables**: `global.lightVertexArrayMap`
- **Scripts**: `lighting_global` (indirectly, through `__LIGHTING_ERROR_CHECKS`)
- **Enums**: `eLight`, `ePolygon`, `eVertex`, `eLightType`
- **Constants**: `pi`

**Potential issues**
- None found.

### light_update
- Functions: `light_update(argument0)`
- Uses: objects: obj_shadow_caster; scripts: light_static_get_array, light_static_set_array, light_trace_polygon, lighting_get_active_camera, lighting_global
- Used by: scripts: light_draw_shadow_map

**AI summary**
**Summary**
The `light_update` script updates the vertex buffer for a given light, handling shadow casting and culling shadow casters based on their position and properties.

**Functions**
- **light_update(light)**: Updates the vertex buffer for the given light and returns the updated vertex buffer.

**Dependencies**
- **Objects**: `obj_shadow_caster`
- **Scripts**: `light_static_get_array`, `light_static_set_array`, `light_trace_polygon`, `lighting_get_active_camera`, `lighting_global`
- **Globals**: `global.worldRebuiltLights`, `global.lightVertexFormat`, `global.worldCulledShadowCastersRTree`, `global.worldDirtyShadowCasters`, `global.worldActiveShadowCasters`, `global.shadowCastersCullByCollisionMask`

**Potential issues**
- None found.

### lighting_debug_shadow_casters
- Functions: `lighting_debug_shadow_casters(argument0)`
- Uses: objects: obj_shadow_caster; scripts: lighting_global
- Used by: objects: obj_light_renderer

**AI summary**
**Summary**
This script is designed to debug shadow casters by drawing their polygons on the screen. It takes a color as an argument and uses it to draw the polygons of all instances of `obj_shadow_caster`.

**Functions**
- **lighting_debug_shadow_casters(color)**: Draws the polygons of all shadow casters using the specified color.

**Dependencies**
- **Objects**: `obj_shadow_caster`
- **Scripts**: `lighting_global` (not directly used in the provided code, but mentioned in known references)
- **Globals**: `polygon`, `ePolygon.Length`, `ePolygon.Count`, `eVertex.X`, `eVertex.Y`

**Potential issues**
- None found.

### lighting_free
- Functions: `lighting_free()`
- Uses: scripts: light_destroy
- Used by: objects: obj_lighting_init

**AI summary**
**Summary**
The `lighting_free` script is designed to free up resources used by the lighting engine in a game. It cleans up vertex formats, destroys all lights, removes shadow maps, and destroys various data structures related to lighting.

**Functions**
- **lighting_free()**: Frees the lighting engine by deleting vertex formats, destroying lights, freeing shadow maps, and destroying data structures.

**Dependencies**
- **global.lightVertexFormat**: A vertex format used by the lighting engine.
- **global.worldLights**: A list containing all the lights in the world.
- **light_destroy()**: A script used to destroy individual lights.
- **global.worldShadowMap**: A surface used for shadow mapping.
- **global.lightShadowMap**: Another surface used for shadow mapping.
- **global.worldDirtyShadowCasters**: A list of shadow casters that need to be updated.
- **global.worldCulledShadowCastersRTree**: A data structure for efficiently managing shadow casters.

**Potential issues**
- None found.

### lighting_get_active_camera
- Functions: `lighting_get_active_camera()`
- Uses: none
- Used by: objects: obj_light_renderer; scripts: composite_shadow_map, light_update, lighting_pre_composite, shadow_map_ensure_exists

**AI summary**
**Summary**
This script retrieves the active camera's port, which includes its position and dimensions. It checks if a custom camera is defined globally; if not, it fetches the active view camera's details.

**Functions**
- **lighting_get_active_camera()**: Retrieves the active camera's port [X, Y, Width, Height].

**Dependencies**
- **global.worldCustomCamera**: A global variable that, if defined, is returned as the active camera.
- **camera_get_active()**: A built-in function to get the active camera.
- **camera_get_view_x(camera)**: A built-in function to get the X position of the camera's view.
- **camera_get_view_y(camera)**: A built-in function to get the Y position of the camera's view.
- **camera_get_view_width(camera)**: A built-in function to get the width of the camera's view.
- **camera_get_view_height(camera)**: A built-in function to get the height of the camera's view.

**Potential issues**
None found.

### lighting_global
- Functions: `lighting_global()`
- Macros: `__LIGHTING_ERROR_CHECKS`, `__LIGHT_LINE_SHADOW_CASTER_STEP`, `__WORLD_DEFAULT_SHADOW_FAR_VERTEX`, `__LIGHT_SHADER`, `__WORLD_SHADOW_MAP_SHADER`, `__LIGHT_RENDERER`
- Enums: `eLightType`, `eLight`, `eLightFlags`, `eShadowCasterFlags`, `eLightExtension`, `eLightReservedExtensionNames`, `eShadowMap`, `eLightingCamera`, `ePolygon`, `eVertex`, `eTriDirection`
- Uses: objects: obj_light_renderer; scripts: ext_light_attenuation_apply, ext_light_attenuation_init, ext_light_attenuation_reset, light_create_extension
- Used by: objects: oPlayerLight_Beam, obj_light, obj_light_renderer, obj_lighting_init, obj_shadow_caster; scripts: composite_shadow_map, cross_product, draw_shadow_map, ext_light_attenuation_init, light_acknowledge_shadow_caster, light_add_extension, light_create, light_create_area, light_create_directional, light_create_extension, light_create_line, light_create_point, light_create_spot, light_cull, light_destroy, light_draw_shadow_map, light_enumerate_extensions, light_ignore_shadow_caster, light_maintain_shadow_map, light_static_get_array, light_static_set_array, light_trace_polygon, light_update, lighting_debug_shadow_casters, lighting_post_composite, lighting_pre_composite, lighting_set_dirty, point_in_polygon, polygon_create, polygon_get_area, shadow_map_ensure_exists, tri_direction

**AI summary**
**Summary**
This script initializes the lighting engine for a game, setting up global variables, enums, and macros necessary for the lighting system. It also configures system settings and initializes shaders and resources required for rendering and managing lights and shadows.

**Functions**
- **lighting_global()**: Initializes the lighting engine, setting up global variables, enums, and macros. It ensures the engine is not initialized multiple times and sets default configurations for the lighting system.

**Dependencies**
- **Global variables**: `lighting_global_initialised`, `ambientShadowIntensity`, `shadowCastersCullByCollisionMask`, `lightMaxUniqueShadowMapSize`, `lightUpdateFrameDelay`, `debugShadowCasters`, `lightDefaultExtensions`, `worldRebuiltLights`, `worldActiveShadowCasters`, `worldShadowMap`, `lightShadowMap`, `worldLights`, `worldDirtyShadowCasters`, `worldCulledShadowCastersRTree`, `worldCustomCamera`, `lightVertexArrayMap`, `tmp_ColorArray`, `u_AmbientShadow`, `u_LutIntensity`, `u_TexelSize`, `u_TexelSize_ShadowMap`, `u_LightPosition`, `u_LightColor`, `u_LightRange`, `u_LightIntensity`, `u_LightAngle`, `u_LightDirection`, `u_LightWidth`, `u_LightType`, `u_LineEmitterPoint1`, `u_LineEmitterPoint2`.
- **Objects**: `obj_light_renderer`.
- **Scripts**: `ext_light_attenuation_apply`, `ext_light_attenuation_init`, `ext_light_attenuation_reset`, `light_create_extension`.

**Potential issues**
None found.

### lighting_post_composite
- Functions: `lighting_post_composite()`
- Uses: scripts: lighting_global
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
This script, `lighting_post_composite`, is executed after the lighting map has been composited. It processes a list of shadow casters that have been marked as dirty, unsetting their dirty and cleanup flags, and then clears the list.

**Functions**
- **lighting_post_composite()**: Executes after compositing the lighting map to process and clear dirty shadow casters.

**Dependencies**
- **global.worldDirtyShadowCasters**: A list of shadow casters that need to be processed.
- **eShadowCasterFlags.MarkedForCleanup**: A flag indicating that a shadow caster is marked for cleanup.
- **eShadowCasterFlags.Dirty**: A flag indicating that a shadow caster is dirty.
- **scripts: lighting_global**: Used by the script (indirect dependency).

**Potential issues**
None found.

### lighting_pre_composite
- Functions: `lighting_pre_composite()`
- Uses: objects: obj_shadow_caster; scripts: lighting_get_active_camera, lighting_global, polygon_get_area
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
This script, `lighting_pre_composite`, is executed before compositing the lighting map. It resets counters for world rebuilt lights and active shadow casters, retrieves the active camera, and updates shadow casters' polygon caches if necessary, checking if they are outside the active camera's view.

**Functions**
- **lighting_pre_composite()**: Executes before compositing the lighting map, resetting counters and updating shadow caster polygons.

**Dependencies**
- **Global variables**: `global.worldRebuiltLights`, `global.worldActiveShadowCasters`
- **Objects**: `obj_shadow_caster`
- **Scripts**: `lighting_get_active_camera`, `lighting_global`, `polygon_get_area`
- **Variables**: `flags`, `eShadowCasterFlags.Dirty`, `eShadowCasterFlags.Static`, `polygon`, `cached_polygon_area`, `outside_active_camera`, `last_camera`, `camera[eLightingCamera.X]`, `camera[eLightingCamera.Y]`, `camera[eLightingCamera.Width]`, `camera[eLightingCamera.Height]`

**Potential issues**
- None found.

### lighting_set_dirty
- Functions: `lighting_set_dirty(argument0)`
- Uses: scripts: lighting_global
- Used by: none

**AI summary**
**Summary**
The `lighting_set_dirty` script is used to mark the lighting system as "dirty," which forces it to recomposite the shadow map the next time it is drawn. This can help reduce update latency and allow for more control over when the shadow map is composited.

**Functions**
- **lighting_set_dirty(dirty)**: Marks the lighting system as dirty or not, depending on the boolean argument provided.

**Dependencies**
- **__LIGHT_RENDERER**: An object or instance variable that holds the state of the lighting system.
- **lighting_global**: A script that is referenced but not used within this script.

**Potential issues**
None found.

### lighting_update_camera
- Functions: `lighting_update_camera(argument0, argument1, argument2, argument3)`
- Uses: none
- Used by: none

**AI summary**
**Summary**
This script updates a custom camera used in a lighting system. It takes four arguments: the top-left corner coordinates and the width and height of the camera. The script stores these values in a global array for later use.

**Functions**
- **lighting_update_camera(x, y, width, height)**: Updates the custom camera with the provided coordinates and dimensions.

**Dependencies**
- **global.worldCustomCamera**: A global array used to store the camera's properties.

**Potential issues**
- None found.

### path_get_area
- Functions: `path_get_area(argument0)`
- Uses: none
- Used by: scripts: polygon_from_path

**AI summary**
**Summary**
This script calculates the bounding area of a given path in GameMaker, returning an array containing the minimum and maximum x and y coordinates of the path's points.

**Functions**
- **path_get_area(path)**: Calculates and returns the bounding area of the specified path as an array with four points.

**Dependencies**
- `path_get_number(path)`: Retrieves the number of points in the specified path.
- `path_get_point_x(path, index)`: Retrieves the x-coordinate of the point at the specified index in the path.
- `path_get_point_y(path, index)`: Retrieves the y-coordinate of the point at the specified index in the path.

**Potential issues**
None found.

### point_in_polygon
- Functions: `point_in_polygon(argument0, argument1)`
- Uses: scripts: lighting_global, tri_direction
- Used by: none

**AI summary**
**Summary**
The `point_in_polygon` script checks if a given point is inside a specified polygon. It uses the `tri_direction` function to determine the direction of triangles formed by the polygon's vertices and the point.

**Functions**
- **point_in_polygon(polygon, point)**: Returns true if the point is inside the polygon, otherwise false.

**Dependencies**
- **Scripts**: `lighting_global`, `tri_direction`
- **Globals**: `__LIGHTING_ERROR_CHECKS`
- **Enums**: `eVertex.Count`, `ePolygon.Length`, `ePolygon.Count`

**Potential issues**
- None found.

### polygon_create
- Functions: `polygon_create(argument0)`
- Uses: scripts: lighting_global
- Used by: scripts: polygon_from_instance, polygon_from_path

**AI summary**
**Summary**
The `polygon_create` script is designed to create a polygon from a set of points. It validates the input, creates a new array to store the polygon, and copies the input points into this new array.

**Functions**
- **polygon_create(set)**: Creates a polygon from a set of points and returns the polygon array.

**Dependencies**
- **scripts: lighting_global**: Used for error checking.
- **globals: __LIGHTING_ERROR_CHECKS**: Used to determine if error checks should be performed.
- **enums: ePolygon.Count**: Used to offset the start of the polygon data in the array.
- **enums: ePolygon.Length**: Used to store the length of the polygon in the array.

**Potential issues**
- None found.

### polygon_from_instance
- Functions: `polygon_from_instance()`
- Uses: scripts: polygon_create
- Used by: objects: oEnemyParent, oExplosiveBarril, oWall

**AI summary**
**Summary**
The `polygon_from_instance` script creates a polygon representation of an instance, optionally considering a rotation. It uses the bounding box or sprite corners to define the polygon points, which are then passed to another script `polygon_create` to generate the final polygon.

**Functions**
- **polygon_from_instance(id, [rotation])**: Creates a polygon from the given instance, optionally applying a rotation.

**Dependencies**
- **Scripts**: `polygon_create`
- **Objects**: `oEnemyParent`, `oExplosiveBarril`, `oWall` (using this script)
- **Variables**: `bbox_left`, `bbox_top`, `bbox_right`, `bbox_bottom`, `sprite_width`, `sprite_height`, `sprite_xoffset`, `sprite_yoffset`, `image_angle`

**Potential issues**
None found.

### polygon_from_path
- Functions: `polygon_from_path(argument0, argument1, argument2)`
- Uses: scripts: path_get_area, polygon_create
- Used by: none

**AI summary**
**Summary**
The `polygon_from_path` script creates a polygon from a given path resource, adjusting for an origin point. It calculates the bounding box of the path, centers it, and then translates each point relative to the origin before creating and returning the polygon.

**Functions**
- **polygon_from_path(path, originx, originy)**: Creates a polygon from a path resource, adjusting for an origin point.

**Dependencies**
- **path_get_area(path)**: Retrieves the bounding box of the path.
- **path_get_number(path)**: Returns the number of points in the path.
- **path_get_point_x(path, index)**: Retrieves the X coordinate of a point in the path.
- **path_get_point_y(path, index)**: Retrieves the Y coordinate of a point in the path.
- **polygon_create(set)**: Creates a polygon from a set of points.

**Potential issues**
None found.

### polygon_get_area
- Functions: `polygon_get_area(argument0)`
- Uses: scripts: lighting_global
- Used by: scripts: lighting_pre_composite

**AI summary**
**Summary**
This script calculates the bounding box area of a polygon and returns it as an array of four points.

**Functions**
- **polygon_get_area(polygon)**: Calculates the bounding box area of a given polygon and returns it as an array of four points.

**Dependencies**
- **lighting_global**: This script is used by the `lighting_pre_composite` script.
- **ePolygon.Length**: A constant or variable used to determine the number of points in the polygon.
- **ePolygon.Count**: A constant or variable used to index the start of the polygon points.
- **eVertex.X**: A constant or variable used to access the x-coordinate of a vertex.
- **eVertex.Y**: A constant or variable used to access the y-coordinate of a vertex.

**Potential issues**
- None found.

### screenShake
- Functions: `screenShake()`
- Uses: none
- Used by: none

**AI summary**
**Summary**
The `screenShake` script is designed to apply a shaking effect to the screen by adjusting the camera's view angle. It takes one argument to determine whether to activate or deactivate the shake effect.

**Functions**
- **screenShake(argument0)**: Adjusts the camera's view angle to create a shaking effect if `argument0` is `true`, or resets the angle to 0 if `argument0` is `false`.

**Dependencies**
- `view_camera[0]`: The camera object to which the shake effect is applied.
- `camera_set_view_angle`: A built-in function to set the view angle of a camera.
- `random_range`: A built-in function to generate a random number within a specified range.

**Potential issues**
- None found.

### shadow_casters_exist
- Functions: `shadow_casters_exist()`
- Uses: objects: obj_shadow_caster
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
This script checks if any instances of the object `obj_shadow_caster` exist in the game world.

**Functions**
- **shadow_casters_exist()**: Returns `true` if there is at least one instance of `obj_shadow_caster`, otherwise returns `false`.

**Dependencies**
- **obj_shadow_caster**: The object whose instances are being counted.
- **instance_number()**: A built-in GameMaker function used to count the number of instances of a given object.

**Potential issues**
None found.

### shadow_map_ensure_exists
- Functions: `shadow_map_ensure_exists(argument0)`
- Uses: scripts: lighting_get_active_camera, lighting_global
- Used by: scripts: composite_shadow_map

**AI summary**
**Summary**
This script ensures that a specified shadow map is valid and creates it if necessary. It checks if the shadow map exists, is valid, and matches the dimensions of the active camera. If not, it recreates the shadow map.

**Functions**
- **shadow_map_ensure_exists(shadowMapType)**: Ensures the specified shadow map is valid and creates it if necessary.

**Dependencies**
- **Global variables**: `global.lightShadowMap`, `global.worldShadowMap`
- **Scripts**: `lighting_get_active_camera`
- **Enums**: `eShadowMap.Light`, `eShadowMap.Global`
- **Constants**: `eLightingCamera.Width`, `eLightingCamera.Height`

**Potential issues**
- None found.

### shoot_bullet
- Functions: `shoot_bullet(xx, yy, _damage, _speed, _angle, _bullet_type, _is_bullet_from_enemy, _shot_effect)`
- Uses: none
- Used by: objects: oEnemyParentGasser, oEnemyParentRanged, oExplosiveBarril, oGun_Parent, oRocket

**AI summary**
**Summary**
The `shoot_bullet` script is designed to create and configure a bullet instance at a specified position with given attributes such as damage, speed, angle, type, origin (enemy or player), and visual effects.

**Functions**
**shoot_bullet(xx, yy, _damage, _speed, _angle, _bullet_type, _is_bullet_from_enemy, _shot_effect)**: Creates a bullet instance at the specified coordinates (`xx`, `yy`) with the provided attributes and initializes its properties.

**Dependencies**
- **Globals**: `global.partSystem`
- **Objects**: `_bullet_type` (assumed to be an object type)
- **Scripts**: None found
- **Variables**: None found

**Potential issues**
- None found.

### tri_direction
- Functions: `tri_direction(argument0, argument1, argument2)`
- Uses: scripts: cross_product, lighting_global
- Used by: scripts: point_in_polygon

**AI summary**
**Summary**
The `tri_direction` script determines whether a given triangle is oriented clockwise or counter-clockwise based on its vertices.

**Functions**
- **tri_direction(a, b, c)**: Determines the direction of a triangle formed by vertices `a`, `b`, and `c` and returns an enum field indicating the direction.

**Dependencies**
- **cross_product**: A script used to calculate the cross product of two vectors.
- **lighting_global**: A global variable or script used for error checking, indicated by `__LIGHTING_ERROR_CHECKS`.
- **eVertex.Count**: An enum or constant representing the number of elements in a vertex array.
- **eVertex.X**: An enum or constant representing the index for the X coordinate in a vertex array.
- **eVertex.Y**: An enum or constant representing the index for the Y coordinate in a vertex array.
- **eTriDirection.Clockwise**: An enum field representing the clockwise direction.
- **eTriDirection.CounterClockwise**: An enum field representing the counter-clockwise direction.

**Potential issues**
- None found.

### weapon_scroll
- Functions: `weapon_scroll(_scroll_up)`
- Uses: objects: oPlayer
- Used by: objects: oCamera

**AI summary**
**Summary**
The `weapon_scroll` script is designed to scroll through the player's weapons, selecting the next or previous weapon based on the direction of the scroll (up or down).

**Functions**
- **weapon_scroll(_scroll_up)**: Scrolls through the player's weapons, updating the selected weapon based on the scroll direction.

**Dependencies**
- **Objects**: `oPlayer`
- **Variables**: `oPlayer.weapon`, `oPlayer.weapons`

**Potential issues**
None found.

## Sprites

### fock
- 64x64 px, 1 frame(s), origin (0, 0), 30 fps, texture group Default

### oBlack_64
- 64x64 px, 1 frame(s), origin (0, 0), 30 fps, texture group Default

### sAmmoPack
- 16x16 px, 2 frame(s), origin (8, 8), 1 fps, texture group Game

### sArrow
- 50x50 px, 1 frame(s), origin (50, 25), 30 fps, texture group Menus

### sBrickWall
- 64x64 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sBullet
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sConjurer
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sConjurer_hurt
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sCursor
- 64x64 px, 1 frame(s), origin (32, 32), 30 fps, texture group Game

### sEnemyNormalBullet
- 64x64 px, 1 frame(s), origin (32, 32), 30 fps, texture group Game

### sEnemy_Ranged_Flamethrower
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sEnemy_Ranged_Normal
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sEnemy_Ranged_Normal_Hurt
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sEnemy_Ranged_RocketLauncher
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sExplosion_Area
- 256x256 px, 1 frame(s), origin (128, 128), 30 fps, texture group Game

### sExplosiveBarril
- 64x64 px, 1 frame(s), origin (32, 32), 30 fps, texture group Game

### sFireParticles
- 64x64 px, 8 frame(s), origin (32, 32), 15 fps, texture group Default

### sFirework
- 72x72 px, 2 frame(s), origin (36, 36), 15 fps, texture group Default

### sFirework2
- 72x72 px, 2 frame(s), origin (36, 36), 15 fps, texture group Default

### sGas_Area
- 128x128 px, 1 frame(s), origin (64, 64), 30 fps, texture group Game

### sGateWay
- 64x64 px, 10 frame(s), origin (32, 32), 15 fps, texture group Game

### sHandgun
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sLifebar
- 130x20 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sMachinegun
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sOutline_circle
- 128x128 px, 1 frame(s), origin (64, 64), 30 fps, texture group Default

### sParticleSmoke
- 72x72 px, 1 frame(s), origin (36, 36), 15 fps, texture group Default

### sPavement
- 64x64 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sPlayer
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sPlayer_hurt
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sPlayer_shooting
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sRocket
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sRocketLauncher
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sShotGunBulletPellet
- 64x64 px, 1 frame(s), origin (32, 32), 30 fps, texture group Game

### sShotgun
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sSniper
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sTriangle
- 16x64 px, 13 frame(s), origin (8, 64), 20 fps, texture group Game

### sWall
- 64x64 px, 1 frame(s), origin (0, 0), 30 fps, texture group Default

### sWalls_tileSet
- 640x640 px, 1 frame(s), origin (0, 0), 30 fps, texture group Default

### sWeaponBox_selected
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sWeaponBox_unselected
- 48x48 px, 1 frame(s), origin (0, 0), 30 fps, texture group Game

### sZombie
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sZombie_hurt
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### sZombie_second
- 32x32 px, 1 frame(s), origin (16, 16), 30 fps, texture group Game

### s_pixel
- 1x1 px, 1 frame(s), origin (0, 0), 30 fps, texture group Default

### s_pixel_big
- 5x5 px, 1 frame(s), origin (0, 0), 30 fps, texture group Default

### spr_light_area
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_directional
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_line
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_point
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_point_1
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_renderer
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_renderer_1
- 16x18 px, 1 frame(s), origin (8, 9), 15 fps, texture group Default

### spr_light_spot
- 23x32 px, 1 frame(s), origin (11, 16), 15 fps, texture group Default

### spr_lut_light_intensity_area
- 512x1 px, 1 frame(s), origin (0, 0), 15 fps, texture group Default

### spr_lut_light_intensity_line
- 512x1 px, 1 frame(s), origin (0, 0), 15 fps, texture group Default

### spr_lut_light_intensity_linear
- 512x1 px, 1 frame(s), origin (0, 0), 15 fps, texture group Default

### spr_lut_light_intensity_spot
- 512x1 px, 1 frame(s), origin (0, 0), 15 fps, texture group Default

## Rooms

### Level
- 3200x3200 px
- Layers: Menus (instance layer, 0 instances); LightRenderer (instance layer, 1 instances); Player (instance layer, 0 instances); Enemies (instance layer, 0 instances); Particles (instance layer, 1 instances); Instances (instance layer, 4 instances); Walls_physical (instance layer, 0 instances); Ground (tile layer, tileset TileSet1); Background (background layer, sprite none); Background2 (background layer, sprite none)
- Objects placed: obj_light_renderer x1, o_part_rain_moody x1, oGame x1, obj_lighting_init x1, oPlayerLight_Area x1, oPlayerLight_Beam x1

### LightingTest
- 1366x768 px
- Layers: LightRenderer (instance layer, 1 instances); Instances (instance layer, 9 instances); Background (background layer, sprite sPavement)
- Objects placed: oVoidWall x5, oPlayerLight_Area x3, obj_light_renderer x1, obj_lighting_init x1

### Room1
- 320x180 px
- Layers: Instances (instance layer, 5 instances); Background (background layer, sprite none)
- Objects placed: oControl x1, o_part_emiter x1, o_part_emiter_delta x1, o_old_part x1, oPointTarget x1

### Room2
- 320x180 px
- Layers: Instances (instance layer, 3 instances); Background (background layer, sprite none)
- Objects placed: o_part_emiter2 x1, o_part_emiter2_delta x1, oControl x1

### Room3
- 320x180 px
- Layers: Instances (instance layer, 2 instances); Background (background layer, sprite none)
- Objects placed: o_part_emitter_wiggle x1, oControl x1

### Room4
- 320x180 px
- Layers: Instances (instance layer, 3 instances); Background (background layer, sprite none)
- Objects placed: o_part_emiter_fire x1, o_part_emiter_fire_delta x1, oControl x1

### Room5
- 320x180 px
- Layers: Instances (instance layer, 3 instances); Background (background layer, sprite none)
- Objects placed: o_part_emiter_firework_delta x1, o_part_emiter_firework2_delta x1, oControl x1

### Room6
- 320x180 px
- Layers: Instances (instance layer, 1 instances); Background (background layer, sprite none)
- Objects placed: oControl x1

### Test
- 6400x6400 px
- Layers: Instances_1 (instance layer, 1 instances); Player (instance layer, 25 instances); Lantern (instance layer, 1 instances); Tiles_1 (tile layer, tileset TileSet1); Instances (instance layer, 11 instances); Shadows (instance layer, 1 instances); Background (background layer, sprite none)
- Objects placed: oZombie x22, oWall x11, oCamera x1, oPlayer x1, oGame x1, oGun_Parent x1, oLantern_NOT_USED x1, oShadows_NOT_USED x1

### rMenu
- 1366x768 px
- Layers: Instances (instance layer, 3 instances); Background (background layer, sprite none)
- Objects placed: oMenuMain x1, o_part_rain_delta x1, o_part_emiter_fire_delta x1

### room0
- 990x960 px
- Layers: Instances (instance layer, 0 instances); Background (background layer, sprite none)

## Globals (assigned in)

- `global.EXT_attenuation_alpha`: ext_light_attenuation_init
- `global.EXT_attenuation_beta`: ext_light_attenuation_init
- `global.ambientShadowIntensity`: lighting_global, obj_light_renderer
- `global.continuousDeltaTimer`: oSteadyDeltaTime, oSteadyDeltaTime_1, oSteadyDeltaTime_2
- `global.debugShadowCasters`: lighting_global
- `global.dt_steady`: oSteadyDeltaTime, oSteadyDeltaTime_1, oSteadyDeltaTime_2
- `global.dt_unsteady`: oSteadyDeltaTime, oSteadyDeltaTime_1, oSteadyDeltaTime_2
- `global.lightDefaultExtensions`: lighting_global
- `global.lightMaxUniqueShadowMapSize`: lighting_global
- `global.lightShadowMap`: lighting_global, shadow_map_ensure_exists
- `global.lightUpdateFrameDelay`: lighting_global, obj_lighting_init
- `global.lightVertexArrayMap`: lighting_global
- `global.lightVertexFormat`: lighting_global
- `global.lighting_global_initialised`: lighting_global
- `global.partSystem`: oGame
- `global.partSystem_top`: oGame
- `global.particles_debug_mode`: oControl
- `global.ptArrow`: init
- `global.ptBlood`: init
- `global.ptBloodPool`: init
- `global.ptCharge`: init
- `global.ptEmpty`: init
- `global.ptExplosion`: init
- `global.ptFlamethrower`: init
- `global.ptGas`: init
- `global.ptGunShot`: init
- `global.ptItemAura`: init
- `global.shadowCastersCullByCollisionMask`: lighting_global
- `global.tmp_ColorArray`: lighting_global
- `global.u_AmbientShadow`: lighting_global
- `global.u_AttenuationAlpha`: ext_light_attenuation_init
- `global.u_AttenuationBeta`: ext_light_attenuation_init
- `global.u_AttenuationEnabled`: ext_light_attenuation_init
- `global.u_LightAngle`: lighting_global
- `global.u_LightColor`: lighting_global
- `global.u_LightDirection`: lighting_global
- `global.u_LightIntensity`: lighting_global
- `global.u_LightPosition`: lighting_global
- `global.u_LightRange`: lighting_global
- `global.u_LightType`: lighting_global
- `global.u_LightWidth`: lighting_global
- `global.u_LineEmitterPoint1`: lighting_global
- `global.u_LineEmitterPoint2`: lighting_global
- `global.u_LutIntensity`: lighting_global
- `global.u_TexelSize`: lighting_global
- `global.u_TexelSize_ShadowMap`: lighting_global
- `global.worldActiveShadowCasters`: lighting_global, lighting_pre_composite
- `global.worldCulledShadowCastersRTree`: lighting_global
- `global.worldCustomCamera`: lighting_global, lighting_update_camera
- `global.worldDirtyShadowCasters`: lighting_global
- `global.worldLights`: lighting_global
- `global.worldRebuiltLights`: lighting_global, lighting_pre_composite
- `global.worldShadowMap`: lighting_global, shadow_map_ensure_exists
