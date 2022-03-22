extends Node2D

# The different types of pawns
enum CELL_TYPES { ACTOR, OBSTACLE, OBJECT }

# Export to make accessable
export(CELL_TYPES) var type = CELL_TYPES.ACTOR
