# Represents a unit on the game board.
# The board manages the Unit's position inside the game grid.
# The unit itself is only a visual representation that moves smoothly in the game world.
# We use the tool mode so the 'skin' and 'skin_offset' below update in the editor.

tool
class_name Unit
extends Path2D

# Preload the 'Grid.tres' resource you created in the previous part.
export var grid: Resource = preload("res://Grid.tres")

# Distance to which the unit can walk in cells.
# We'll use this to limit the cells the unit can move to
export var move_range := 1

# Texture representing the unit.
# With the 'tool' mode, assigning a new textyre to this property in the inspector will
# update the unit's sprite instantly.
export var skin: Texture setget set_skin

# Our unit's skin is just a sprite in this demo and depending on its size, we need to offset it so
# the sprite aligns with the shadow.
export var skin_offset := Vector2.ZERO setget set_skin_offset

# The unit's move speed in pixels, when it's moving along a path.
export var move_speed := 600.0

# Coordinates of the grid's cell the unit is on.
var cell := Vector2.ZERO setget set_cell

# Toggles the "selected" animation on the unit.
var is_selected := false setget set_is_selected

# Through its setter function, the '_is_walking' property toggles processing for this unit.
var _is_walking := false setget _set_is_walking

onready var _sprite: Sprite = $PathFollow2D/Sprite
onready var _anim_player: AnimationPlayer = $AnimationPlayer
onready var _path_follow: PathFollow2D = $PathFollow2D
