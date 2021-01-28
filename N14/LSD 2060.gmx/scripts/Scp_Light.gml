///Scp_Light(size,color);
size = argument0;
color = argument1;
draw_set_blend_mode(bm_subtract);
surface_set_target(light);
draw_ellipse_colour(
    x - size/2 - view_xview,
    y - size/2 - view_yview,
    x + size/2 - view_xview,
    y + size/2 - view_yview,
    color,
    c_black,
    false
);
surface_reset_target();
draw_set_blend_mode(bm_normal);
