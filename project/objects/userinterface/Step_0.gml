if point_in_rectangle(mouse_x,mouse_y,0,0,room_width,room_height) {
	mouseInGame = true
}
else mouseInGame = false

var mouseover = false
for(var w=0;w<grid_width;w++) {
	for(var h=0;h<grid_height;h++) {
		if point_in_rectangle(mouse_x,mouse_y, w*cell_width,h*cell_height, w*grid_width+cell_width,h*grid_height+cell_height) {
			mouseover = true
			cell.x = w
			cell.y = h
		}
	}
}
if !mouseover and (cell.x > 0 or cell.y > 0) {
	cell.x = 0
	cell.y = 0
}