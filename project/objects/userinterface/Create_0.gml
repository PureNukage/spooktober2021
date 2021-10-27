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