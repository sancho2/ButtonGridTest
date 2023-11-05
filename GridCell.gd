extends ColorRect
#-------------------------------------------------------------------------------
# GridCell
#-------------------------------------------------------------------------------
signal cell_selected(address)
@export var cell_column:int
#var neighbors:Array[ColorRect] = [null, null, null, null, null, null, null, null]

var is_yellow:bool = false: 
	get: 
		return is_yellow
	set(value): 
		is_yellow = value

func _on_button_pressed() -> void:
	cell_selected.emit(cell_column)

