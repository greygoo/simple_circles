function rgb_to_r_g_b(colour,alpha)
    return ((colour / 0x10000) % 0x100) / 255., 
           ((colour / 0x100) % 0x100) / 255., 
           (colour % 0x100) / 255., 
           alpha
end


function deg_to_rad(deg)
    return deg*(2*math.pi/360)-math.pi/2
end


function draw_ring(cr, t, pt)
    local xc,yc = pt['x'],pt['y'];
    local ring_radius = pt['radius'];
    local ring_width = pt['thickness'];
    local ring_start = deg_to_rad(pt['start_angle']);
    local ring_end = deg_to_rad(pt['end_angle']);
    
    local ring_bgc = pt['bg_colour'];
    local ring_bga = pt['bg_alpha'];
    local ring_fgc = pt['fg_colour'];
    local ring_fga = pt['fg_alpha'];

    local arc_value = t*(ring_end-ring_start);


    -- Back 
    cairo_set_source_rgba(cr, rgb_to_r_g_b(ring_bgc, ring_bga));
    cairo_set_line_width(cr, ring_width);
    cairo_arc(cr, 
              xc, yc, 
	      ring_radius, 
              ring_start, 
              ring_end);
    cairo_stroke(cr);

    -- Front
    cairo_set_source_rgba(cr, rgb_to_r_g_b(ring_fgc, ring_fga));
    cairo_set_line_width(cr, ring_width - 2);
    cairo_arc(cr, 
              xc, yc, 
	      ring_radius, 
              ring_start, 
              ring_start + arc_value);
    cairo_stroke(cr);
end

--function draw_text(cr, pt)
--    --Font
--    cairo_select_font_face (
--        cr,
--        "Impact",
--        CAIRO_FONT_SLANT_NORMAL,
--        CAIRO_FONT_WEIGHT_NORMAL
--    );
--    cairo_set_font_size (cr, 172);
--    cairo_set_source_rgba (cr, 0.7, 0.6, 0.3, 1);
--
--    --Time
--    cairo_move_to (cr, 0, 144);
--    cairo_show_text (cr, conky_parse('${time %H:%M}'));
--end
