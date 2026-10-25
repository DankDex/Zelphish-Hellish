# Structure: zombie survival

Generated 2026-10-25 01:23 | 73 objects, 58 scripts, 57 sprites, 11 rooms

## Objects

### oAmmoBox
- parent: none | sprite: sAmmoPack
- Events: Create (5 lines), Destroy (1 lines), Alarm 0 (5 lines), Step (8 lines), Collision with oPlayer (24 lines)
- Uses: objects: oLight_Area, oPlayer
- Used by: objects: oLevelGen, oMap

### oBullet_Parent
- parent: none | sprite: none
- Events: Destroy (4 lines), Begin Step (12 lines), Collision with oEnemyParent (5 lines), Animation End (1 lines)
- Uses: objects: oEnemyParent
- Used by: objects: oEnemyNormalBullet, oEnemyParent, oExplosion, oExplosiveBarril, oFlameThrowerAmmo, oFlameThrowerAmmoEnemy, oGasArea, oHandGunBullet, oMap, oPlayer, oRocket, oShotGunBullet, oShotGunBulletPellet, oSniperBullet, oZombie

### oCamera
- parent: none | sprite: none
- Events: Create (42 lines), Destroy (3 lines), Step (96 lines), Mouse 60 (3 lines), Mouse 61 (3 lines), Draw (2 lines), Draw GUI (81 lines), Draw End (14 lines)
- Uses: objects: oPlayer; scripts: draw_text_transformed_outlined, weapon_scroll; sprites: sLifebar, sWeaponBox_selected, sWeaponBox_unselected
- Used by: objects: oEnemyParent, oExplosion, oGame, oPlayer, oZombie
- Placed in rooms: Test (x1)

### oCityGen
- parent: none | sprite: none
- Events: none with code
- Uses: none
- Used by: none

### oControl
- parent: none | sprite: none | flags: persistent
- Events: Create (15 lines), Alarm 0 (2 lines), Begin Step (9 lines), KeyPress (key code 27) (2 lines), KeyPress (key code 32) (2 lines), KeyPress (key code 38) (3 lines), KeyPress (key code 40) (3 lines), KeyPress (key code 81) (1 lines), KeyPress (key code 82) (1 lines), Draw GUI (5 lines)
- Uses: rooms: Room1
- Used by: none
- Placed in rooms: Room1 (x1), Room2 (x1), Room3 (x1), Room4 (x1), Room5 (x1), Room6 (x1)

### oDamageNumber
- parent: none | sprite: none
- Events: Create (8 lines), Draw (6 lines)
- Uses: scripts: damageNumber
- Used by: objects: oEnemyParent, oZombie

### oEnemyNormalBullet
- parent: oBullet_Parent | sprite: sEnemyNormalBullet
- Events: Step (2 lines), Collision with oPlayer (1 lines), Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oPlayer, oWall
- Used by: none

### oEnemyParent
- parent: obj_shadow_caster | sprite: sZombie
- Events: Create (13 lines), Destroy (1 lines), Alarm 0 (9 lines), Begin Step (15 lines), Collision with oBullet_Parent (56 lines), Collision with oEnemyParent (8 lines), Draw (21 lines)
- Uses: objects: oBullet_Parent, oCamera, oDamageNumber, oPlayer, oWall, obj_shadow_caster; scripts: chance, polygon_from_instance
- Used by: objects: oBullet_Parent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyParentMelee, oEnemyParentRanged, oFlameThrowerAmmo, oFlameThrowerAmmoEnemy, oGame, oLevelGen, oMap, oPlayer, oRocket

### oEnemyParentConjurer
- parent: oEnemyParent | sprite: sConjurer
- Events: Alarm 1 (34 lines), Step (62 lines)
- Uses: objects: oEnemyParent, oPlayer, oWall, oZombie
- Used by: objects: oLevelGen

### oEnemyParentGasser
- parent: oEnemyParent | sprite: sZombie
- Events: Alarm 1 (9 lines), Step (49 lines), Collision with oEnemyParentMelee (8 lines)
- Uses: objects: oEnemyParent, oEnemyParentMelee, oGasArea, oPlayer, oWall; scripts: shoot_bullet
- Used by: objects: oLevelGen

### oEnemyParentMelee
- parent: oEnemyParent | sprite: sZombie
- Events: Step (33 lines), Collision with oEnemyParentMelee (8 lines), Collision with oZombie (2 lines)
- Uses: objects: oEnemyParent, oPlayer, oWall, oZombie
- Used by: objects: oEnemyParentGasser, oZombie, oZombieSecond

### oEnemyParentRanged
- parent: oEnemyParent | sprite: sEnemy_Ranged_Normal
- Events: Create (13 lines), Step (67 lines), Draw (12 lines)
- Uses: objects: oEnemyParent, oPlayer, oWall; scripts: shoot_bullet
- Used by: objects: oEnemyRangedFlamethrower, oEnemyRangedNormal, oEnemyRangedRocketLauncher

### oEnemyRangedFlamethrower
- parent: oEnemyParentRanged | sprite: sEnemy_Ranged_Flamethrower
- Events: Step (110 lines)
- Uses: objects: oEnemyParentRanged, oFlameThrowerAmmoEnemy, oPlayer, oWall
- Used by: none

### oEnemyRangedNormal
- parent: oEnemyParentRanged | sprite: sEnemy_Ranged_Normal
- Events: none with code
- Uses: objects: oEnemyParentRanged
- Used by: objects: oLevelGen

### oEnemyRangedRocketLauncher
- parent: oEnemyParentRanged | sprite: sEnemy_Ranged_RocketLauncher
- Events: none with code
- Uses: objects: oEnemyParentRanged
- Used by: objects: oLevelGen

### oExplosion
- parent: oBullet_Parent | sprite: sExplosion_Area | flags: invisible
- Events: Create (2 lines), Destroy (2 lines), Step (8 lines)
- Uses: objects: oBullet_Parent, oCamera
- Used by: objects: oExplosiveBarril, oRocket

### oExplosiveBarril
- parent: obj_shadow_caster | sprite: sExplosiveBarril
- Events: Create (11 lines), Destroy (0 lines), Alarm 0 (4 lines), Step (0 lines), Collision with oBullet_Parent (9 lines)
- Uses: objects: oBullet_Parent, oExplosion, oGasArea, oPlayer, obj_shadow_caster; scripts: polygon_from_instance, shoot_bullet
- Used by: objects: oLevelGen

### oFlameThrower
- parent: oGun_Parent | sprite: none
- Events: Mouse 50 (36 lines), Mouse 56 (2 lines)
- Uses: objects: oFlameThrowerAmmo, oGun_Parent, oPlayer
- Used by: none

### oFlameThrowerAmmo
- parent: oBullet_Parent | sprite: none
- Events: Create (1 lines), Step (6 lines), Begin Step (12 lines), End Step (10 lines), Collision with oEnemyParent (2 lines)
- Uses: objects: oBullet_Parent, oEnemyParent, oPlayer
- Used by: objects: oFlameThrower

### oFlameThrowerAmmoEnemy
- parent: oBullet_Parent | sprite: none
- Events: Create (3 lines), Step (11 lines), Begin Step (15 lines), End Step (4 lines), Collision with oEnemyParent (2 lines)
- Uses: objects: oBullet_Parent, oEnemyParent, oPlayer
- Used by: objects: oEnemyRangedFlamethrower

### oGame
- parent: none | sprite: sWall | flags: persistent, invisible
- Events: Create (21 lines), Clean Up (3 lines), Step (0 lines), KeyPress (key code 27) (11 lines), KeyPress (key code 80) (1 lines), KeyPress (key code 81) (8 lines), KeyPress (key code 84) (1 lines), KeyPress (key code 86) (1 lines), KeyPress (key code 90) (1 lines), Room Start (29 lines)
- Uses: objects: oCamera, oEnemyParent, oLevelGen, oMap, oMenuPause, oPlayer; rooms: Test, rMenu; scripts: init; sprites: sCursor
- Used by: none
- Placed in rooms: Level (x1), Test (x1)

### oGasArea
- parent: oBullet_Parent | sprite: sGas_Area | flags: invisible
- Events: Create (2 lines), Step (14 lines)
- Uses: objects: oBullet_Parent
- Used by: objects: oEnemyParentGasser, oExplosiveBarril

### oGun_Parent
- parent: none | sprite: none
- Events: Create (9 lines), Step (33 lines), KeyPress (key code 82) (5 lines), Mouse 50 (24 lines)
- Uses: objects: oPlayer; scripts: shoot_bullet
- Used by: objects: oFlameThrower, oHandGun, oMachineGun, oRocketLauncher, oShotGun, oSniperGun
- Placed in rooms: Test (x1)

### oHandGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

### oHandGunBullet
- parent: oBullet_Parent | sprite: sBullet
- Events: Collision with oWall (1 lines), Collision with oZombie (2 lines)
- Uses: objects: oBullet_Parent, oWall, oZombie
- Used by: objects: oZombie

### oLantern_NOT_USED
- parent: none | sprite: none
- Events: Create (2 lines), Step (9 lines), Draw (1 lines), Draw End (33 lines)
- Uses: objects: oPlayer
- Used by: none
- Placed in rooms: Test (x1)

### oLevelGen
- parent: none | sprite: sWall | flags: invisible
- Events: Create (139 lines)
- Uses: objects: oAmmoBox, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyRangedNormal, oEnemyRangedRocketLauncher, oExplosiveBarril, oPassWay, oPlayable, oPlayer, oVoidWall, oWall, oZombie, oZombieSecond; scripts: chance
- Used by: objects: oGame

### oLight_Area
- parent: obj_light | sprite: none | flags: invisible
- Events: Step (0 lines)
- Uses: objects: obj_light
- Used by: objects: oAmmoBox

### oLight_Passway_Area
- parent: obj_light | sprite: none
- Events: Step (2 lines)
- Uses: objects: obj_light
- Used by: objects: oPassWay

### oMachineGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

### oMap
- parent: none | sprite: none
- Events: Create (45 lines), KeyPress (key code 77) (18 lines), Draw GUI (71 lines)
- Uses: objects: oAmmoBox, oBullet_Parent, oEnemyParent, oPassWay, oPlayer, oWall; sprites: sOutline_circle
- Used by: objects: oGame

### oMenuDeath
- parent: none | sprite: none
- Events: Create (47 lines), Destroy (0 lines), Step (32 lines), Draw (6 lines), Draw GUI (28 lines)
- Uses: rooms: rMenu; scripts: TextFunctions; sprites: sArrow
- Used by: objects: oPlayer

### oMenuMain
- parent: none | sprite: none
- Events: Create (46 lines), Destroy (0 lines), Step (32 lines), Draw (28 lines)
- Uses: rooms: Level; scripts: TextFunctions; sprites: sArrow
- Used by: none
- Placed in rooms: rMenu (x1)

### oMenuPause
- parent: none | sprite: none
- Events: Create (49 lines), Destroy (1 lines), Step (37 lines), Draw GUI (28 lines), Draw End (5 lines)
- Uses: objects: o_part_emitter_wiggle; rooms: rMenu; scripts: TextFunctions; sprites: sArrow
- Used by: objects: oGame, oPlayer

### oPassWay
- parent: none | sprite: sGateWay | flags: invisible
- Events: Create (2 lines), Destroy (1 lines), Step (21 lines), Collision with oPlayer (2 lines)
- Uses: objects: oLight_Passway_Area, oPlayer, oTriangle; sprites: sGateWay
- Used by: objects: oLevelGen, oMap, oTriangle

### oPlayable
- parent: none | sprite: fock
- Events: none with code
- Uses: none
- Used by: objects: oLevelGen

### oPlayer
- parent: none | sprite: sPlayer
- Events: Create (27 lines), Step (88 lines), Collision with oBullet_Parent (45 lines), Collision with oEnemyParent (45 lines), Collision with oZombie (0 lines), Draw (22 lines)
- Uses: objects: oBullet_Parent, oCamera, oEnemyParent, oHandGun, oMachineGun, oMenuDeath, oMenuPause, oRocketLauncher, oShotGun, oSniperGun, oWall, oZombie; sprites: sPlayer, sPlayer_hurt, sPlayer_shooting
- Used by: objects: oAmmoBox, oCamera, oEnemyNormalBullet, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyParentMelee, oEnemyParentRanged, oEnemyRangedFlamethrower, oExplosiveBarril, oFlameThrower, oFlameThrowerAmmo, oFlameThrowerAmmoEnemy, oGame, oGun_Parent, oLantern_NOT_USED, oLevelGen, oMap, oPassWay, oPlayerLight_Beam, oRocket, oShadows_NOT_USED, oShotGunBullet, oTriangle, oVoidWall, oWall, o_part_rain_moody, obj_light; scripts: weapon_scroll
- Placed in rooms: Test (x1)

### oPlayerLight_Area
- parent: obj_light | sprite: none | flags: invisible
- Events: none with code
- Uses: objects: obj_light
- Used by: none
- Placed in rooms: Level (x1), LightingTest (x3)

### oPlayerLight_Beam
- parent: obj_light | sprite: none | flags: invisible
- Events: Step (11 lines)
- Uses: objects: oPlayer, obj_light; scripts: lighting_global
- Used by: none
- Placed in rooms: Level (x1)

### oPointTarget
- parent: none | sprite: none
- Events: Step (3 lines)
- Uses: scripts: UsefulScripts
- Used by: objects: o_part_emiter_delta
- Placed in rooms: Room1 (x1)

### oResize_NOT_USED
- parent: none | sprite: none
- Events: Create (4 lines), Room Start (4 lines)
- Uses: none
- Used by: none

### oRocket
- parent: oBullet_Parent | sprite: sRocket
- Events: Step (5 lines), Collision with oEnemyParent (9 lines), Collision with oPlayer (4 lines), Collision with oWall (3 lines)
- Uses: objects: oBullet_Parent, oEnemyParent, oExplosion, oPlayer, oWall; scripts: shoot_bullet
- Used by: none

### oRocketLauncher
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

### oShadows_NOT_USED
- parent: none | sprite: none
- Events: Create (3 lines), Step (12 lines), Draw (74 lines)
- Uses: objects: oPlayer, oWall
- Used by: none
- Placed in rooms: Test (x1)

### oShotGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

### oShotGunBullet
- parent: oBullet_Parent | sprite: none
- Events: Begin Step (37 lines), Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oPlayer, oShotGunBulletPellet, oWall
- Used by: none

### oShotGunBulletPellet
- parent: oBullet_Parent | sprite: sShotGunBulletPellet
- Events: Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oWall
- Used by: objects: oShotGunBullet

### oSniperBullet
- parent: oBullet_Parent | sprite: sBullet
- Events: Collision with oWall (1 lines)
- Uses: objects: oBullet_Parent, oWall
- Used by: none

### oSniperGun
- parent: oGun_Parent | sprite: none
- Events: none with code
- Uses: objects: oGun_Parent
- Used by: objects: oPlayer

### oSteadyDeltaTime
- parent: none | sprite: none | flags: persistent
- Events: Create (37 lines), Begin Step (37 lines)
- Uses: none
- Used by: scripts: AdvancedParticleSystem, AdvancedParticleSystem_1, AdvancedParticleSystem_2

### oSteadyDeltaTime_1
- parent: none | sprite: none | flags: persistent
- Events: Create (37 lines), Begin Step (37 lines)
- Uses: none
- Used by: none

### oSteadyDeltaTime_2
- parent: none | sprite: none | flags: persistent
- Events: Create (37 lines), Begin Step (37 lines)
- Uses: none
- Used by: none

### oTriangle
- parent: none | sprite: sTriangle
- Events: Step (7 lines)
- Uses: objects: oPassWay, oPlayer
- Used by: objects: oPassWay

### oVoidWall
- parent: none | sprite: oBlack_64
- Events: Create (4 lines), Alarm 0 (4 lines), Step (0 lines)
- Uses: objects: oPlayer
- Used by: objects: oLevelGen
- Placed in rooms: LightingTest (x5)

### oWall
- parent: obj_shadow_caster | sprite: sBrickWall | mask: sWall
- Events: Create (11 lines), Alarm 0 (4 lines), Step (0 lines)
- Uses: objects: oPlayer, obj_shadow_caster; scripts: polygon_from_instance
- Used by: objects: oEnemyNormalBullet, oEnemyParent, oEnemyParentConjurer, oEnemyParentGasser, oEnemyParentMelee, oEnemyParentRanged, oEnemyRangedFlamethrower, oHandGunBullet, oLevelGen, oMap, oPlayer, oRocket, oShadows_NOT_USED, oShotGunBullet, oShotGunBulletPellet, oSniperBullet, oZombie
- Placed in rooms: Test (x11)

### oZombie
- parent: oEnemyParentMelee | sprite: sZombie
- Events: Collision with oBullet_Parent (55 lines), Collision with oHandGunBullet (51 lines), Collision with oZombie (8 lines)
- Uses: objects: oBullet_Parent, oCamera, oDamageNumber, oEnemyParentMelee, oHandGunBullet, oWall; scripts: chance
- Used by: objects: oEnemyParentConjurer, oEnemyParentMelee, oHandGunBullet, oLevelGen, oPlayer
- Placed in rooms: Test (x22)

### oZombieSecond
- parent: oEnemyParentMelee | sprite: sZombie_second
- Events: none with code
- Uses: objects: oEnemyParentMelee
- Used by: objects: oLevelGen

### o_old_part
- parent: none | sprite: none
- Events: Create (13 lines), Clean Up (4 lines), Step (1 lines), Draw GUI (2 lines)
- Uses: sprites: s_pixel
- Used by: none
- Placed in rooms: Room1 (x1)

### o_part_emiter
- parent: none | sprite: none
- Events: Create (14 lines), Clean Up (2 lines), Step (6 lines), Draw (1 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room1 (x1)

### o_part_emiter2
- parent: none | sprite: none
- Events: Create (36 lines), Clean Up (2 lines), Step (4 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room2 (x1)

### o_part_emiter2_delta
- parent: none | sprite: none
- Events: Create (36 lines), Clean Up (2 lines), Step (4 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room2 (x1)

### o_part_emiter_delta
- parent: none | sprite: none
- Events: Create (23 lines), Clean Up (2 lines), Step (6 lines), Draw (2 lines), Draw GUI (3 lines)
- Uses: objects: oPointTarget; scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Room1 (x1)

### o_part_emiter_fire
- parent: none | sprite: none
- Events: Create (52 lines), Clean Up (2 lines), Step (7 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFireParticles, sParticleSmoke, s_pixel
- Used by: none
- Placed in rooms: Room4 (x1)

### o_part_emiter_fire_delta
- parent: none | sprite: none
- Events: Create (52 lines), Clean Up (2 lines), Step (7 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFireParticles, sParticleSmoke, s_pixel
- Used by: none
- Placed in rooms: Room4 (x1), rMenu (x1)

### o_part_emiter_firework2_delta
- parent: none | sprite: none
- Events: Create (54 lines), Clean Up (2 lines), Step (8 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFirework2, s_pixel
- Used by: none
- Placed in rooms: Room5 (x1)

### o_part_emiter_firework_delta
- parent: none | sprite: none
- Events: Create (54 lines), Clean Up (2 lines), Step (8 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: sFirework, s_pixel
- Used by: none
- Placed in rooms: Room5 (x1)

### o_part_emitter_wiggle
- parent: none | sprite: none
- Events: Create (29 lines), Clean Up (6 lines), Step (5 lines), Draw (2 lines), Draw GUI (2 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel_big
- Used by: objects: oMenuPause
- Placed in rooms: Room3 (x1)

### o_part_rain_delta
- parent: none | sprite: none
- Events: Create (44 lines), Clean Up (2 lines), Step (3 lines), Draw (2 lines), Draw GUI (0 lines)
- Uses: scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: rMenu (x1)

### o_part_rain_moody
- parent: none | sprite: none
- Events: Create (47 lines), Clean Up (2 lines), Step (3 lines), Draw (2 lines), Draw GUI (0 lines)
- Uses: objects: oPlayer; scripts: AdvancedParticleSystem; sprites: s_pixel
- Used by: none
- Placed in rooms: Level (x1)

### obj_light
- parent: none | sprite: spr_light_point | flags: invisible
- Events: Create (40 lines), Clean Up (4 lines), Step (6 lines)
- Uses: objects: oPlayer; scripts: light_add_to_world, light_create_area, light_create_directional, light_create_line, light_create_point, light_create_spot, light_destroy, light_remove_from_world, lighting_global; sprites: spr_light_area, spr_light_directional, spr_light_line, spr_light_point, spr_light_spot
- Used by: objects: oLight_Area, oLight_Passway_Area, oPlayerLight_Area, oPlayerLight_Beam

### obj_light_renderer
- parent: none | sprite: spr_light_renderer
- Events: Create (5 lines), Step (3 lines), Draw (19 lines), Draw End (5 lines)
- Uses: scripts: composite_shadow_map, draw_shadow_map, lighting_debug_shadow_casters, lighting_get_active_camera, lighting_global
- Used by: scripts: lighting_global
- Placed in rooms: Level (x1), LightingTest (x1)

### obj_lighting_init
- parent: none | sprite: none | flags: persistent, invisible
- Events: Create (6 lines), Destroy (3 lines)
- Uses: scripts: lighting_free, lighting_global
- Used by: none
- Placed in rooms: Level (x1), LightingTest (x1)

### obj_shadow_caster
- parent: none | sprite: none | flags: invisible
- Events: Create (29 lines)
- Uses: scripts: lighting_global
- Used by: objects: oEnemyParent, oExplosiveBarril, oWall; scripts: light_update, lighting_debug_shadow_casters, lighting_pre_composite, shadow_casters_exist

## Scripts

### AdvancedParticleSystem
- Functions: `advanced_part_system()` constructor, `particle(part_type)` constructor, `advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)` constructor, `advanced_part_type()` constructor, `advanced_part_emitter_burst(ps, part_emit, part_type, number)`, `advanced_part_particles_create(ps, x, y, part_type, number)`, `advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)`, `advanced_part_system_destroy(id)`
- Enums: `aps_shape`, `aps_distr`
- Uses: objects: oSteadyDeltaTime
- Used by: objects: o_part_emiter, o_part_emiter2, o_part_emiter2_delta, o_part_emiter_delta, o_part_emiter_fire, o_part_emiter_fire_delta, o_part_emiter_firework2_delta, o_part_emiter_firework_delta, o_part_emitter_wiggle, o_part_rain_delta, o_part_rain_moody; scripts: AdvancedParticleSystem_1, AdvancedParticleSystem_2

### AdvancedParticleSystem_1
- Functions: `advanced_part_system()` constructor, `particle(part_type)` constructor, `advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)` constructor, `advanced_part_type()` constructor, `advanced_part_emitter_burst(ps, part_emit, part_type, number)`, `advanced_part_particles_create(ps, x, y, part_type, number)`, `advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)`, `advanced_part_system_destroy(id)`, `AdvancedParticleSystem_1()`
- Enums: `aps_shape`, `aps_distr`
- Uses: objects: oSteadyDeltaTime; scripts: AdvancedParticleSystem
- Used by: none

### AdvancedParticleSystem_2
- Functions: `advanced_part_system()` constructor, `particle(part_type)` constructor, `advanced_part_emitter(ps, xmin, xmax, ymin, ymax, shape, distribution)` constructor, `advanced_part_type()` constructor, `advanced_part_emitter_burst(ps, part_emit, part_type, number)`, `advanced_part_particles_create(ps, x, y, part_type, number)`, `advanced_part_emitter_region(part_emit, xmin, xmax, ymin, ymax, shape, distribution)`, `advanced_part_system_destroy(id)`, `AdvancedParticleSystem_2()`
- Enums: `aps_shape`, `aps_distr`
- Uses: objects: oSteadyDeltaTime; scripts: AdvancedParticleSystem
- Used by: none

### TextFunctions
- Functions: `text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha)`, `shadowed_text(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha)`, `shaking_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _delta_x, _delta_y)`, `shaking_shadowed_text(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y)`, `typewriter_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show)`, `shadowed_typewriter_text(_text, _x, _y, _font, _halign, _valign, _text_color, _text_alpha, _number_of_characters_to_show, _shadow_offset, _shadow_color, _shadow_alpha)`, `text_with_shaking_shadow(_text, _x, _y, _font, _halign, _valign, _shadow_offset, _text_color, _shadow_color, _outline_color, _text_alpha, _shadow_alpha, _delta_x, _delta_y)`
- Uses: scripts: draw_text_transformed_outlined
- Used by: objects: oMenuDeath, oMenuMain, oMenuPause; scripts: draw_text_transformed_outlined

### UsefulScripts
- Functions: `Approach(_value, _dest, _amount)`, `ApproachDelta(_value, _dest, _amount)`, `Chance(_value)`, `Wave(_from, _dest, _duration, _offset)`, `ReachTween(_value, _destination, _smoothness)`, `DrawSetText(_color, _font, _haling, _valing, _alpha)`, `DrawTextShadow(_x, _y, _string)`, `draw_text_outline(_x, _y, _string, _outwidth, _outcolor, _outfidelity)`, `draw_text_outline_transformed(_x, _y, _string, _xscale, _yscale, _outwidth, _outcolor, _outfidelity)`, `draw_rectangle_width(x1, y1, x2, y2, _width, _inside, _outline)`, `string_zeroes_scripts(_string, _nubmer)`, `draw_circle_curve(_xx, _yy, _radius, _bones, _angle, _angleadd, _width, _outline)`, `draw_healthbar_circular(center_x, center_y, _radius, _start_ang, _health, _sprite)`
- Uses: none
- Used by: objects: oPointTarget

### chance
- Functions: `chance(argument0)`
- Uses: none
- Used by: objects: oEnemyParent, oLevelGen, oZombie

### composite_shadow_map
- Functions: `composite_shadow_map(argument0)`
- Uses: scripts: get_next_pot, light_cull, light_draw_shadow_map, light_enumerate_extensions, light_maintain_shadow_map, lighting_get_active_camera, lighting_global, lighting_post_composite, lighting_pre_composite, shadow_casters_exist, shadow_map_ensure_exists
- Used by: objects: obj_light_renderer

### cross_product
- Functions: `cross_product(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: tri_direction

### damageNumber
- Functions: `damageNumber(color, damage, duration, text_angle, crit, scale)`
- Uses: scripts: draw_text_transformed_outlined
- Used by: objects: oDamageNumber

### draw_shadow_map
- Functions: `draw_shadow_map(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: objects: obj_light_renderer

### draw_text_transformed_outlined
- Functions: `draw_text_transformed_outlined(xx, yy, outline_color, color, text, scale, text_angle, offset)`
- Uses: scripts: TextFunctions
- Used by: objects: oCamera; scripts: TextFunctions, damageNumber

### ext_light_attenuation_apply
- Functions: `ext_light_attenuation_apply(argument0)`
- Uses: none
- Used by: scripts: lighting_global

### ext_light_attenuation_init
- Functions: `ext_light_attenuation_init()`
- Uses: scripts: lighting_global
- Used by: scripts: lighting_global

### ext_light_attenuation_reset
- Functions: `ext_light_attenuation_reset(argument0)`
- Uses: none
- Used by: scripts: lighting_global

### get_next_pot
- Functions: `get_next_pot(argument0)`
- Uses: none
- Used by: scripts: composite_shadow_map, light_maintain_shadow_map

### init
- No named functions found (137 lines; probably a legacy script callable as `init`)
- Uses: none
- Used by: objects: oGame

### keyboard_get_number
- Functions: `keyboard_get_number()`
- Uses: none
- Used by: none

### light_acknowledge_shadow_caster
- Functions: `light_acknowledge_shadow_caster()`
- Uses: scripts: lighting_global
- Used by: none

### light_add_extension
- Functions: `light_add_extension(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: light_create

### light_add_to_world
- Functions: `light_add_to_world(argument0)`
- Uses: none
- Used by: objects: obj_light

### light_create
- Functions: `light_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6)`
- Uses: scripts: light_add_extension, lighting_global; sprites: spr_lut_light_intensity_area, spr_lut_light_intensity_line, spr_lut_light_intensity_linear, spr_lut_light_intensity_spot
- Used by: scripts: light_create_area, light_create_directional, light_create_line, light_create_point, light_create_spot

### light_create_area
- Functions: `light_create_area(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

### light_create_directional
- Functions: `light_create_directional(argument0, argument1, argument2, argument3, argument4, argument5, argument6)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

### light_create_extension
- Functions: `light_create_extension(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: lighting_global

### light_create_line
- Functions: `light_create_line(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

### light_create_point
- Functions: `light_create_point(argument0, argument1, argument2, argument3, argument4, argument5)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

### light_create_spot
- Functions: `light_create_spot(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)`
- Uses: scripts: light_create, lighting_global
- Used by: objects: obj_light

### light_cull
- Functions: `light_cull(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: composite_shadow_map

### light_destroy
- Functions: `light_destroy(argument0)`
- Uses: scripts: lighting_global
- Used by: objects: obj_light; scripts: lighting_free

### light_draw_shadow_map
- Functions: `light_draw_shadow_map(argument0, argument1, argument2)`
- Uses: scripts: light_update, lighting_global
- Used by: scripts: composite_shadow_map

### light_enumerate_extensions
- Functions: `light_enumerate_extensions(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: composite_shadow_map

### light_ignore_shadow_caster
- Functions: `light_ignore_shadow_caster()`
- Uses: scripts: lighting_global
- Used by: none

### light_maintain_shadow_map
- Functions: `light_maintain_shadow_map(argument0)`
- Uses: scripts: get_next_pot, lighting_global
- Used by: scripts: composite_shadow_map

### light_remove_from_world
- Functions: `light_remove_from_world(argument0)`
- Uses: none
- Used by: objects: obj_light

### light_static_get_array
- Functions: `light_static_get_array(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: light_update

### light_static_set_array
- Functions: `light_static_set_array(argument0, argument1, argument2)`
- Uses: scripts: lighting_global
- Used by: scripts: light_update

### light_trace_polygon
- Functions: `light_trace_polygon(argument0, argument1)`
- Uses: scripts: lighting_global
- Used by: scripts: light_update

### light_update
- Functions: `light_update(argument0)`
- Uses: objects: obj_shadow_caster; scripts: light_static_get_array, light_static_set_array, light_trace_polygon, lighting_get_active_camera, lighting_global
- Used by: scripts: light_draw_shadow_map

### lighting_debug_shadow_casters
- Functions: `lighting_debug_shadow_casters(argument0)`
- Uses: objects: obj_shadow_caster; scripts: lighting_global
- Used by: objects: obj_light_renderer

### lighting_free
- Functions: `lighting_free()`
- Uses: scripts: light_destroy
- Used by: objects: obj_lighting_init

### lighting_get_active_camera
- Functions: `lighting_get_active_camera()`
- Uses: none
- Used by: objects: obj_light_renderer; scripts: composite_shadow_map, light_update, lighting_pre_composite, shadow_map_ensure_exists

### lighting_global
- Functions: `lighting_global()`
- Macros: `__LIGHTING_ERROR_CHECKS`, `__LIGHT_LINE_SHADOW_CASTER_STEP`, `__WORLD_DEFAULT_SHADOW_FAR_VERTEX`, `__LIGHT_SHADER`, `__WORLD_SHADOW_MAP_SHADER`, `__LIGHT_RENDERER`
- Enums: `eLightType`, `eLight`, `eLightFlags`, `eShadowCasterFlags`, `eLightExtension`, `eLightReservedExtensionNames`, `eShadowMap`, `eLightingCamera`, `ePolygon`, `eVertex`, `eTriDirection`
- Uses: objects: obj_light_renderer; scripts: ext_light_attenuation_apply, ext_light_attenuation_init, ext_light_attenuation_reset, light_create_extension
- Used by: objects: oPlayerLight_Beam, obj_light, obj_light_renderer, obj_lighting_init, obj_shadow_caster; scripts: composite_shadow_map, cross_product, draw_shadow_map, ext_light_attenuation_init, light_acknowledge_shadow_caster, light_add_extension, light_create, light_create_area, light_create_directional, light_create_extension, light_create_line, light_create_point, light_create_spot, light_cull, light_destroy, light_draw_shadow_map, light_enumerate_extensions, light_ignore_shadow_caster, light_maintain_shadow_map, light_static_get_array, light_static_set_array, light_trace_polygon, light_update, lighting_debug_shadow_casters, lighting_post_composite, lighting_pre_composite, lighting_set_dirty, point_in_polygon, polygon_create, polygon_get_area, shadow_map_ensure_exists, tri_direction

### lighting_post_composite
- Functions: `lighting_post_composite()`
- Uses: scripts: lighting_global
- Used by: scripts: composite_shadow_map

### lighting_pre_composite
- Functions: `lighting_pre_composite()`
- Uses: objects: obj_shadow_caster; scripts: lighting_get_active_camera, lighting_global, polygon_get_area
- Used by: scripts: composite_shadow_map

### lighting_set_dirty
- Functions: `lighting_set_dirty(argument0)`
- Uses: scripts: lighting_global
- Used by: none

### lighting_update_camera
- Functions: `lighting_update_camera(argument0, argument1, argument2, argument3)`
- Uses: none
- Used by: none

### path_get_area
- Functions: `path_get_area(argument0)`
- Uses: none
- Used by: scripts: polygon_from_path

### point_in_polygon
- Functions: `point_in_polygon(argument0, argument1)`
- Uses: scripts: lighting_global, tri_direction
- Used by: none

### polygon_create
- Functions: `polygon_create(argument0)`
- Uses: scripts: lighting_global
- Used by: scripts: polygon_from_instance, polygon_from_path

### polygon_from_instance
- Functions: `polygon_from_instance()`
- Uses: scripts: polygon_create
- Used by: objects: oEnemyParent, oExplosiveBarril, oWall

### polygon_from_path
- Functions: `polygon_from_path(argument0, argument1, argument2)`
- Uses: scripts: path_get_area, polygon_create
- Used by: none

### polygon_get_area
- Functions: `polygon_get_area(argument0)`
- Uses: scripts: lighting_global
- Used by: scripts: lighting_pre_composite

### screenShake
- Functions: `screenShake()`
- Uses: none
- Used by: none

### shadow_casters_exist
- Functions: `shadow_casters_exist()`
- Uses: objects: obj_shadow_caster
- Used by: scripts: composite_shadow_map

### shadow_map_ensure_exists
- Functions: `shadow_map_ensure_exists(argument0)`
- Uses: scripts: lighting_get_active_camera, lighting_global
- Used by: scripts: composite_shadow_map

### shoot_bullet
- Functions: `shoot_bullet(xx, yy, _damage, _speed, _angle, _bullet_type, _is_bullet_from_enemy, _shot_effect)`
- Uses: none
- Used by: objects: oEnemyParentGasser, oEnemyParentRanged, oExplosiveBarril, oGun_Parent, oRocket

### tri_direction
- Functions: `tri_direction(argument0, argument1, argument2)`
- Uses: scripts: cross_product, lighting_global
- Used by: scripts: point_in_polygon

### weapon_scroll
- Functions: `weapon_scroll(_scroll_up)`
- Uses: objects: oPlayer
- Used by: objects: oCamera

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
