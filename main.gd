extends Node2D
#-------------------------------------------------------------------------------
# Main
#-------------------------------------------------------------------------------
var yellow_rect:ColorRect = null 
	
func _on_row_cell_selected(ca:CellAddress) -> void:
	if yellow_rect != null: 
		yellow_rect.color = Color.WHITE
	yellow_rect = get_color_rect_at_address(ca)
	yellow_rect.color = Color.YELLOW

func get_color_rect_at_address(ca:CellAddress)->ColorRect: 
	var r:String = "Row" + str(ca.row)
	var node:Node2D = get_node(r)
	return node.get_rect_at_address(ca)
