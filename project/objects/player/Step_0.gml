//hspd = input.keyRight - input.keyLeft
//vspd = input.keyDown - input.keyUp

//	Moving
if (hspd != 0 or vspd != 0) {
	moveDirection = point_direction(0,0,hspd,vspd)
	moveForce += 0.1
	moveForce = clamp(moveForce,0,maxMovespeed)
	
	setForce(moveForce, moveDirection)
}
//	Not Moving
else {
	if moveForce > 0 {
		moveForce--	
	}
	else moveForce = 0
}

applyMovement()