if live_call() return live_result;

if on {
	
	depth = -1
	
	//	Grid
	if instance_exists(userinterface) with userinterface {
		draw_set_alpha(0.5)
		mp_grid_draw(grid)
		draw_set_alpha(1)
	}
	
	//	Player stuff
	if instance_exists(player) with player {
		
		//	Path
		draw_set_color(c_white)
		draw_path(path,x,y,true)
		
		//	Collision
		draw_set_color(c_blue)
		draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false)
		
		//	Variables
		draw_set_color(c_white)
		draw_text(bbox_right+5,bbox_top+5,"pos: "+string(pos))
		draw_text(bbox_right+5,bbox_top+15,"moving: "+string(moving))
		draw_text(bbox_right+5,bbox_top+25,"x_goto: "+string(x_goto))
		draw_text(bbox_right+5,bbox_top+35,"y_goto: "+string(y_goto))
	}
}