if live_call() return live_result;

var xx = room_width/2
var yy = room_height/2 - 120
var width = 40
var height = 20
var text = "Go"
var thickness = 2

//	GO button
if state == 0 {
	draw_set_color(c_black)
	draw_rectangle(xx-width/2-thickness,yy-height/2-thickness,xx+width+thickness,yy+height+thickness,false)
	if point_in_rectangle(mouse_x,mouse_y,xx-width/2,yy-height/2,xx+width,yy+height) {
		draw_set_color(c_red)
	
		///	Button click code
		if input.mouseLeftPress {
			
			//	Check for current scenery
			if instance_exists(scenery) with scenery {
				panning = true
				offscreen = true
			}
			
			var House = instance_create_layer(room_width+5,5,"Instances",scenery)
			House.panning = true
			
			var House = instance_create_layer(room_width+5,5,"Instances",scenery)
			House.panning = true
			House.x = room_width+5+400
			House.pumpkinX = 40
			state = 1
			
		}
	
	}
	else {
		draw_set_color(c_maroon)
	}
	draw_rectangle(xx-width/2,yy-height/2,xx+width,yy+height,false)

	draw_set_font(Font1)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(xx+width/4,yy+height/4,text)

	draw_reset()
}

//	DEBUG draw grid
draw_set_alpha(0.5)
mp_grid_draw(grid)
draw_set_alpha(1)

mp_grid_add_rectangle(grid,0,0,room_width,room_height)

//	First house
var X1 = 7
var Y1 = 11
var X2 = 7
var Y2 = 16
mp_grid_clear_rectangle(grid,X1*cell_width,Y1*cell_height,X2*cell_width,Y2*cell_height)

//	Second house
var X1 = 32
var Y1 = 11
var X2 = 32
var Y2 = 16
mp_grid_clear_rectangle(grid,X1*cell_width,Y1*cell_height,X2*cell_width,Y2*cell_height)

//	Sidewalk
var X1 = 0
var Y1 = 17
var X2 = 39
var Y2 = 18
mp_grid_clear_rectangle(grid,X1*cell_width,Y1*cell_height,X2*cell_width,Y2*cell_height)

//draw_set_color(c_black)
//for(var w=0;w<grid_width;w++) {
//	for(var h=0;h<grid_height;h++) {
//		var scale = 0.40
//		draw_text_transformed(w*cell_width,h*cell_height,string(w) + "," + string(h), scale,scale, 0)
//		//draw_rectangle(w*cell_width,h*cell_height,(w*cell_width)+cell_width-1,(h*cell_height)+cell_height-1,true)		
//	}
//}