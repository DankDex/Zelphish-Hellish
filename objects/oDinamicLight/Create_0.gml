//Resize the application surface to be lower res (for pixel games + performance boost) 320 180
surface_resize(application_surface,888,500);
display_set_gui_maximize();

//Shader uniform variable setup
u_pos = shader_get_uniform(shd_light,"u_pos");
u_pos2 = shader_get_uniform(shd_shadow,"u_pos");
u_z = shader_get_uniform(shd_light,"u_z");
u_z2 = shader_get_uniform(shd_shadow,"u_z");

//Vertex format and buffer setup
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();


//turn on Debug
show_debug_overlay(0);

player_light = instance_create_depth(oPlayer.x,oPlayer.y,depth,oLight);