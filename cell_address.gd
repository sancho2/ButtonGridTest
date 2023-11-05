extends Node
#-------------------------------------------------------------------------------
# CellAddress
#-------------------------------------------------------------------------------
class_name CellAddress
var row:int:
	get:
		return row
	set(value): 
		row = value

var col:int: 
	get: 
		return col
	set(value): 
		col = value
func _init(r:int, c:int)->void: 
	row = r
	col = c
func _to_string()->String: 
	return "row: " + str(row) + " col: " + str(col)
		
#func get_neighbor_indexes()->Array[CellAddress]: 
	#var n:Array[CellAddress] 
	#n.resize(9)
	##var n:Vector2
	#var i:int
	#for y in range(row - 1, row + 2): 
		#for x in range(col - 1, col + 2): 
			#if y >= 0: 
				#if x >= 0: 
					#n[i] = CellAddress.new(y, x)
				#else: 
					#n[i] = null
			#else: 
				#n[i] = null
			#i += 1
	#return n		
#
