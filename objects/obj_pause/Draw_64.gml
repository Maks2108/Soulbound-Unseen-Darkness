if (global.paused)
{
    draw_set_alpha(0.5);
    draw_set_color(c_gray);
    draw_rectangle(0, 0,25600 ,14400, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
}