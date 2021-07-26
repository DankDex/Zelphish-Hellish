
#region Particle Types


//Empty Default Particle =============================================
var _p = part_type_create();

part_type_life(_p, 0,0);

global.ptEmpty = _p;


//Blood Particles =============================================
var _p = part_type_create();

part_type_life(_p, 20,40);
part_type_speed(_p, 2, 4, 0, 0);
part_type_size(_p, 0.1, 0.02,0,0);
part_type_shape(_p, pt_shape_square);
part_type_color2(_p, c_red, c_maroon);
part_type_direction(_p, 190, 350, 0, 0);
part_type_gravity(_p, 0.05, 270);
part_type_alpha2(_p, 1, 0);
part_type_orientation(_p, 0, 90, 90, 90, 90);

global.ptBlood = _p;


//Blood Pool Particles =============================================
var _p = part_type_create();

part_type_life(_p, 120, 360);
part_type_size(_p, 1, 1, 0, 0);
part_type_shape(_p, pt_shape_spark);
part_type_color2(_p, c_red, c_maroon);
part_type_direction(_p, 190, 350, 0, 0);
part_type_alpha2(_p, 1, 0);

global.ptBloodPool = _p;


//GunShot Particles =============================================
var _p = part_type_create();

part_type_life(_p, 20,40);
part_type_speed(_p, 2, 4, 0, 0);
part_type_size(_p, 0.08, 0.08,0,0);
part_type_shape(_p, pt_shape_square);
part_type_color2(_p, c_white, c_yellow);
part_type_alpha2(_p, 1, 0);
part_type_orientation(_p, 0, 90, 90, 90, 90);

global.ptGunShot = _p;


//Item Aura Particles =============================================
var _p = part_type_create();

part_type_life(_p, 30,60);
part_type_speed(_p, 0.2, 0.5, 0, 0);
part_type_size(_p, 0.02, 0.04,0,0.05);
part_type_shape(_p, pt_shape_square);
part_type_color2(_p, c_blue, c_white);
part_type_alpha2(_p, 1, 0);
part_type_direction(_p, 90,90,0,0);

global.ptItemAura = _p;


//Charge Particles =============================================
var _p = part_type_create();

part_type_life(_p, 5,10);
part_type_speed(_p, 0.2, 0.5, 0, 0);
part_type_size(_p, 0.2, 0.4,0,0.05);
part_type_shape(_p, pt_shape_flare);
part_type_color3(_p, c_yellow, c_gray, c_white);
part_type_alpha2(_p, 1, 0);

global.ptCharge = _p;


//Flamethower Particles =============================================
var _p = part_type_create();

part_type_life(_p, 30,40);
part_type_speed(_p, 2, 4, 0, 0);
part_type_size(_p, 0.02, 0.04,0,0.05);
part_type_shape(_p, pt_shape_square);
part_type_color3(_p, c_yellow, c_orange, c_red);
part_type_alpha2(_p, 1, 0);

global.ptFlamethrower = _p;


//Explosion Particles =============================================
var _p = part_type_create();

part_type_life(_p, 20,50);
part_type_speed(_p, 4, 6, 0, 0);
part_type_size(_p, 0.1, 0.3,0,0.05);
part_type_shape(_p, pt_shape_smoke);
part_type_color2(_p, c_orange, c_red);
part_type_alpha2(_p, 1, 0.7);
part_type_direction(_p, 0, 360, 0, 0);

global.ptExplosion = _p;


#endregion