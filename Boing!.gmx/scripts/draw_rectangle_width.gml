/// draw_rectangle_width(x1, y1, x2, y2, width, color, outline)
var x1      = argument[0];
var y1      = argument[1];

var x2      = argument[2];
var y2      = argument[3];

var width   = argument[4];
var c       = argument[5];
var outline = argument[6];

for(var i = 0; i < width; i++){
    draw_rectangle_colour(x1 + i, y1 + i, x2 - i, y2 - i, c, c, c, c, outline);
}

