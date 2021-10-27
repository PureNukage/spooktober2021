state = 0
cell_width = 16
cell_height = 16
grid_width = floor(room_width/cell_width)
grid_height = floor(room_height/cell_height)

mouseInGame = false
cell = {
	x : 0,
	y : 0
}

grid = mp_grid_create(0,0,grid_width,grid_height,cell_width,cell_height)