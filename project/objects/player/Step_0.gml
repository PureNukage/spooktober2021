if live_call() return live_result;

if input.mouseLeftPress and userinterface.mouseInGame {
	var X = (userinterface.cell.x * userinterface.cell_width) + userinterface.cell_width/2
	var Y = (userinterface.cell.y * userinterface.cell_height) + userinterface.cell_height/2
	if pathfind(userinterface.grid,path, x,y, X,Y, false) {
		
	}
}

if moving {
	//	End of Path
	if pos++ >= path_get_number(path)-1 {
		moving = false
	}
	else {
		
	}
}

////	Moving
//if (hspd != 0 or vspd != 0) {
//	moveDirection = point_direction(0,0,hspd,vspd)
//	moveForce += 0.1
//	moveForce = clamp(moveForce,0,maxMovespeed)
	
//	setForce(moveForce, moveDirection)
//}
////	Not Moving
//else {
//	if moveForce > 0 {
//		moveForce--	
//	}
//	else moveForce = 0
//}

applyMovement()