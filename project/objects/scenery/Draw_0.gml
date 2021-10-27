if live_call() return live_result;

switch(state) {
	//	House
	case 0:
		
		draw_sprite(s_house,0,x-pan,y)
		
		var scale = 0.5
		draw_sprite_ext(s_pumpkin,0,x+pumpkinX-pan,pumpkinY,scale,scale,0,c_white,1)
		
		//	House Mouseover
		if !panning {
			if point_in_rectangle(mouse_x,mouse_y,x-pan+20,y+5,x-pan+210,y+180) {
				draw_sprite(s_sidewalk_arrow,0,x-pan,y)	
			}
			else {
				draw_sprite(s_sidewalk,0,x-pan,y)	
			}
		}
		//	Panning
		else {
			draw_sprite(s_sidewalk,0,x-pan,y)	
		}
		
		////	DEBUG
		//draw_set_color(c_red)
		//draw_rectangle(x-pan+20,y+5,x-pan+210,y+180,true)
		
	break
}