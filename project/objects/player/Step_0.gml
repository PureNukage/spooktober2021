if live_call() return live_result;

if input.mouseLeftPress and userinterface.mouseInGame {
	var X = (userinterface.cell.x * userinterface.cell_width) + userinterface.cell_width/2
	var Y = (userinterface.cell.y * userinterface.cell_height) + userinterface.cell_height/2
	if pathfind(userinterface.grid,path, x,y, X,Y, false) {
		pos = 0
		x_goto = path_get_point_x(path, pos)
		y_goto = path_get_point_y(path, pos)
		moving = true
	}
}

if moving {
	
	//	Arrived at next point in path
	if floor(point_distance(x,y, x_goto,y_goto) < 2) {
		//	End of Path
		if pos >= path_get_number(path) {
			moving = false
			speed = 0
		}
		//	Another point in path
		else {
			x_goto = path_get_point_x(path,pos)
			y_goto = path_get_point_y(path,pos)
			pos++
		}
	}
	//	Moving to next point in path
	else {
		move_towards_point(x_goto,y_goto,maxMovespeed)
	}
}