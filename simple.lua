require 'cairo'
require 'simple_settings'
require 'simple_draw'


function draw_rings(cr, pt)
    local str='';
    local value=0;

    str=string.format('${%s %s}',pt['name'],pt['arg']);
    str=conky_parse(str);

    value=tonumber(str)
    pct=value/pt['max']
    
    draw_ring(cr, pct, pt);
end


function conky_load_content()
    if conky_window==nil then return end
    local cs=cairo_xlib_surface_create(
        conky_window.display,
        conky_window.drawable,
        conky_window.visual,
        conky_window.width,
        conky_window.height
    );

    local cr=cairo_create(cs);

    local updates=conky_parse('${updates}');
    update_num=tonumber(updates);

    if update_num>5 then
        for i in pairs(circle_settings) do
            draw_rings(cr, circle_settings[i]);
        end
        for i in pairs(text_settings) do
            draw_text(cr, text_settings[i]);
        end
    end
end
