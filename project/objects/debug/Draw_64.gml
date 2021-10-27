if live_call() return live_result;

draw_set_color(c_dkgray)
var xx = 15
var yy = 15
var width = 200
var height = 100
draw_roundrect(xx,yy,width,height,false)

draw_set_color(c_white)
draw_text(30,30,string(userinterface.cell.x) + "," + string(userinterface.cell.y))