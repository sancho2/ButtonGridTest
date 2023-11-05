extends Node2D
#-------------------------------------------------------------------------------
# Row
#-------------------------------------------------------------------------------
signal cell_selected(address:CellAddress)
@export var row:int

func get_rect_at_address(ca:CellAddress)->ColorRect: 
	if ca.row != row: return null 
	if ca.col < 0 or ca.col > 3: return null 
	return get_child(ca.col)

func _on_grid_cell_cell_selected(column:int) -> void:
	var ca:CellAddress = CellAddress.new(row, column)
	cell_selected.emit(ca)
	print(ca)

