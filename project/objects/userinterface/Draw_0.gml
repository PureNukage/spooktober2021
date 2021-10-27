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