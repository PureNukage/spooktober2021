if debug.on {
	
	if instance_exists(player) with player {
		
		//	Path
		draw_set_color(c_white)
		draw_path(path,x,y,true)
		
		//	Collision
		draw_set_color(c_blue)
		draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false)
	}
}